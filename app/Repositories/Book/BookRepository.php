<?php

namespace Fully\Repositories\Book;

use Carbon\Carbon;
use Fully\Models\Author;
use Fully\Models\Entity;
use Fully\Models\Book;
use Config;
use Fully\Models\Publisher;
use Fully\Models\SubCategory;
use Google\Cloud\Storage\StorageClient;
use League\Flysystem\Filesystem;
use Response;
use Fully\Models\Tag;
use Fully\Models\Category;
use Storage;
use Str;
use Event;
use Image;
use File;
use Fully\Repositories\RepositoryAbstract;
use Fully\Repositories\CrudableInterface as CrudableInterface;
use Fully\Exceptions\Validation\ValidationException;
use Superbalist\Flysystem\GoogleStorage\GoogleStorageAdapter;

/**
 * Class BookRepository.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class BookRepository extends RepositoryAbstract implements BookInterface, CrudableInterface
{
    protected $width;
    protected $height;
    protected $thumbWidth;
    protected $thumbHeight;
    protected $imgDir;
    protected $perPage;
    /**
     * @var \Fully\Models\Book
     */
    protected $book;
    /**
     * @var \Fully\Models\Entity
     */
    protected $entity;
    /**
     * Rules.
     *
     * @var array
     */
    protected static $rules = [
        'title' => 'required',
        'content' => 'required',
        'price' => 'required',

    ];

    /**
     * @param Book $Book
     */
    public function __construct(Book $book, Entity $entity)
    {
        $config = Config::get('fully');
        $this->perPage = $config['per_page'];
        $this->width = $config['modules']['book']['image_size']['width'];
        $this->height = $config['modules']['book']['image_size']['height'];
        $this->thumbWidth = $config['modules']['book']['thumb_size']['width'];
        $this->thumbHeight = $config['modules']['book']['thumb_size']['height'];
        $this->imgDir = $config['modules']['book']['image_dir'];
        $this->book = $book;
        $this->entity = $entity;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        return $this->book->with('tags')->orderBy('created_at', 'DESC')->where('is_published', 1)->where('lang', $this->getLang())->get();
    }

    /**
     * @param $limit
     *
     * @return mixed
     */
    public function getLastBook($limit)
    {
        return $this->book->orderBy('created_at', 'desc')->where('lang', $this->getLang())->take($limit)->offset(0)->get();
    }

    /**
     * @return mixed
     */
    public function lists()
    {
        return $this->book->get()->where('lang', $this->getLang())->lists('title', 'id');
    }

   

    /**
     * Get paginated Books.
     *
     * @param int  $page  Number of Books per page
     * @param int  $limit Results per page
     * @param bool $all   Show published or all
     *
     * @return StdClass Object with $items and $totalItems for pagination
     */
    public function paginate($page = 1, $limit = 10, $all = false)
    {
        $result = new \StdClass();
        $result->page = $page;
        $result->limit = $limit;
        $result->totalItems = 0;
        $result->items = array();

        $query = $this->book->with('entity')->orderBy('id', 'DESC')->where('lang', $this->getLang());

        if (!$all) {
            $query->where('is_published', 1);
        }

        $books = $query->skip($limit * ($page - 1))->take($limit)->get();

        $result->totalItems = $this->totalBooks($all);
        $result->items = $books->all();

        return $result;
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function find($id)
    {
        return $this->book->with(['entity', 'category'])->findOrFail($id);
    }

    /**
     * @param $slug
     *
     * @return mixed
     */
    public function getBySlug($slug)
    {
        return $this->book->with(['entity', 'category'])->where('slug', $slug)->first();
    }

    public function createEntity($attributes){
        $this->entity->lang = $this->getLang();

        $this->entity->fill(['title'=>$attributes['title'],
            'price'=>$attributes['price'],
            'rent_price'=>$attributes['rent_price']])->save();
//save tags
        $tags = explode(',', $attributes['tag']);

        foreach ($tags as $tagName) {
            if (!$tagName) {
                continue;
            }

            $tag = Tag::query()->where('name', '=', $tagName)->where('lang', $this->getLang()) ->first();

            if (!$tag) {
                $tag = new Tag();
            }

            $tag->lang = $this->getLang();
            $tag->name = $tagName;
            $this->entity->tags()->save($tag);
        }

//save subcategories

        if(!array_key_exists('subCategories', $attributes))
            return;
        $subCategories = $attributes['subCategories'];

        foreach ($subCategories as $subCatId) {
            if (!$subCatId || $subCatId == -1) {
                continue;
            }

            $subCat = SubCategory::query()->find($subCatId);

            if ($subCat) {
                $this->entity->subCategories()->save($subCat);
            }
        }


    }

    private function updateEntity($attributes)
    {
        $this->entity->lang = $this->getLang();

        $this->entity->fill(['title'=>$attributes['title']
            , 'price'=>$attributes['price']
            , 'rent_price'=>$attributes['rent_price']])->save();
//save tags


        $tags = explode(',', $attributes['tag']);
        $this->entity->tags()->detach();
        foreach ($tags as $tagName) {
            if (!$tagName) {
                continue;
            }

            $tag = Tag::query()->where('name', '=', $tagName)->where('lang', $this->getLang()) ->first();

            if (!$tag) {
                $tag = new Tag();
            }

            $tag->lang = $this->getLang();
            $tag->name = $tagName;
            

            $this->entity->tags()->save($tag);
        }

//save subcategories
        $this->entity->subCategories()->detach();
        if(!array_key_exists('subCategories', $attributes))
            return;
        $subCategories = $attributes['subCategories'];

        foreach ($subCategories as $subCatId) {
            if (!$subCatId || $subCatId == -1) {
                continue;
            }

            $subCat = SubCategory::query()->find($subCatId);

            if ($subCat) {
                $this->entity->subCategories()->save($subCat);
            }
        }
    }

    /**
     * @param $attributes
     *
     * @return bool|mixed
     *
     * @throws \Fully\Exceptions\Validation\ValidationException
     */
    public function create($attributes)
    {
        $attributes['is_published'] = isset($attributes['is_published']) ? true : false;

        if ($this->isValid($attributes)) {

            //--------------------------------------------------------

            $file = null;

            if (isset($attributes['image'])) {
                $file = $attributes['image'];
            }

            if ($file) {
                $fileName = $file->getClientOriginalName();
                $fileSize = $file->getClientSize();

                $storageClient = new StorageClient([
                    'projectId' => 'plated-analyzer-138323',
                    'keyFilePath' => storage_path('app/banhbaostorage.json'),
                ]);
                $bucket = $storageClient->bucket('banhbaovietnam');
                $adapter = new GoogleStorageAdapter($storageClient, $bucket);
                $filesystem = new Filesystem($adapter);
                $fileInfoArr = pathinfo($fileName);
                $fileName = $fileInfoArr['filename'].Carbon::now()->format("Ymdhis.").$fileInfoArr['extension'];
                $upload_success = $filesystem->write($fileName, file_get_contents($file->getPathname()));


                if ($upload_success) {

                    $this->book->lang = $this->getLang();
                    $this->book->file_name = $fileName;
                    $this->book->file_size = $fileSize;
                    $this->book->path = $fileName;
                }
            }

            //--------------------------------------------------------

            $this->createEntity($attributes);
            $this->book->entity()->associate($this->entity);
            $this->book->lang = $this->getLang();
            if ($this->book->fill($attributes)->save()) {
                $category = Category::query()->find($attributes['category']);
                $this->book->category()->associate($category);
//                $category->books()->save($this->book);

                $author = Author::query()->find($attributes['author']);
                $this->book->author()->associate($author);
//                $author->books()->save($this->book);

                $publisher = Publisher::query()->find($attributes['publisher']);
                $this->book->publisher()->associate($publisher);
                $this->book->save();
//                $publisher->books()->save($this->book);
            }

            //Event::fire('Book.created', $this->Book);
            Event::fire('book.creating', $this->book);

            return true;
        }

        throw new ValidationException('Book validation failed', $this->getErrors());
    }

    /**
     * @param $id
     * @param $attributes
     *
     * @return bool|mixed
     *
     * @throws \Fully\Exceptions\Validation\ValidationException
     */
    public function update($id, $attributes)
    {
        $this->book = $this->find($id);
        $this->entity = $this->book->entity;
        $attributes['is_published'] = isset($attributes['is_published']) ? true : false;

        if ($this->isValid($attributes)) {

            //-------------------------------------------------------
            if (isset($attributes['image'])) {
                $file = $attributes['image'];

                // delete old image
                if ($file) {
                    $fileName = $file->getClientOriginalName();
                    $fileSize = $file->getClientSize();

                    $storageClient = new StorageClient([
                        'projectId' => 'plated-analyzer-138323',
                        'keyFilePath' => storage_path('app/banhbaostorage.json'),
                    ]);
                    $bucket = $storageClient->bucket('banhbaovietnam');
                    $adapter = new GoogleStorageAdapter($storageClient, $bucket);
                    $filesystem = new Filesystem($adapter);
                    $fileInfoArr = pathinfo($fileName);
                    $fileName = $fileInfoArr['filename'].Carbon::now()->format("Ymdhis.").$fileInfoArr['extension'];
                    $upload_success = $filesystem->write($fileName, file_get_contents($file->getPathname()));


                    if ($upload_success) {

                        $this->book->lang = $this->getLang();
                        $this->book->file_name = $fileName;
                        $this->book->file_size = $fileSize;
                        $this->book->path = $fileName;
                    }
                }
            }
            //-------------------------------------------------------
            $this->updateEntity($attributes);
//            $this->book->entity()->associate($this->entity);

            if ($this->book->fill($attributes)->save()) {
                $this->book->resluggify();
                $category = Category::find($attributes['category']);
                $category->books()->save($this->book);

                $author = Author::query()->find($attributes['author']);
                $author->books()->save($this->book);

                $publisher = Publisher::query()->find($attributes['publisher']);
                $publisher->books()->save($this->book);
            }

            return true;
        }

        throw new ValidationException('Book validation failed', $this->getErrors());
    }

    /**
     * @param $id
     *
     * @return mixed|void
     */
    public function delete($id)
    {
        $book = $this->book->findOrFail($id);
        $book->entity->subCategories()->detach();
        $book->entity->tags()->detach();
        $book->entity->delete();
        $book->delete();
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function togglePublish($id)
    {
        $book = $this->book->find($id);

        $book->is_published = ($book->is_published) ? false : true;
        $book->save();

        return Response::json(array('result' => 'success', 'changed' => ($book->is_published) ? 1 : 0));
    }

    /**
     * @param $id
     *
     * @return string
     */
    public function getUrl($id)
    {
        $book = $this->book->findOrFail($id);

        return url('book/'.$id.'/'.$book->slug, $parameters = array(), $secure = null);
    }

    /**
     * Get total Book count.
     *
     * @param bool $all
     *
     * @return mixed
     */
    protected function totalBooks($all = false)
    {
        if (!$all) {
            return $this->book->where('is_published', 1)->where('lang', $this->getLang())->count();
        }

        return $this->book->where('lang', $this->getLang())->count();
    }


}
