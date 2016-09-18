<?php

namespace Fully\Http\Controllers\Admin;

use Fully\Models\SubCategory;
use Fully\Repositories\Author\AuthorInterface;
use Fully\Repositories\Publisher\PublisherInterface;
use Fully\Repositories\SubCategory\SubCategoryInterface;
use View;
use Flash;
use Input;
use Response;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\Book\BookInterface;
use Fully\Repositories\Category\CategoryInterface;
use Fully\Exceptions\Validation\ValidationException;
use Fully\Repositories\Book\BookRepository as Book;
use Fully\Repositories\Category\CategoryRepository as Category;

/**
 * Class BookController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class BookController extends Controller
{
    protected $book;
    protected $category;
    protected $author;
    protected $publisher;
    protected $subCategory;
    protected $perPage;

    public function __construct(BookInterface $book, CategoryInterface $category, 
                                SubCategoryInterface $subCategory, 
                                AuthorInterface $author, PublisherInterface $publisher)
    {
        View::share('active', 'book');
        $this->book = $book;
        $this->category = $category;
        $this->subCategory = $subCategory;
        $this->author = $author;
        $this->publisher = $publisher;

        $this->perPage = config('fully.modules.book.per_page');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $pagiData = $this->book->paginate(Input::get('page', 1), $this->perPage, true);
        $books = Pagination::makeLengthAware($pagiData->items, $pagiData->totalItems, $this->perPage);

        return view('backend.book.index', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $categories = $this->category->findByGroupForDropDown(config("common.const.CATEGORY_BOOK"));
        $authors = $this->author->findByGroupForDropDown();
        $publishers = $this->publisher->findByGroupForDropDown();
        $subCategories =
            $this->subCategory->findByGroupForDropDown(config("common.const.SUBCATEGORY_BOOK"));

        return view('backend.book.create', compact('categories', 'subCategories', 'authors', 'publishers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        try {
            $this->book->create(Input::all());
            Flash::message('Tạo sach thành công');

            return langRedirectRoute('admin.book.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.book.create')->withInput()->withErrors($e->getErrors());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $book = $this->book->find($id);

        return view('backend.book.show', compact('book'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $book = $this->book->find($id);
        $tags = null;

        foreach ($book->entity->tags as $tag) {
            $tags .= ','.$tag->name;
        }

        $tags = substr($tags, 1);
        $categories = $this->category->findByGroupForDropDown(config("common.const.CATEGORY_BOOK"));
        $subCategories =
            $this->subCategory->findByGroupForDropDown(config("common.const.SUBCATEGORY_BOOK"));
        $authors = $this->author->findByGroupForDropDown();
        $publishers = $this->publisher->findByGroupForDropDown();
        return view('backend.book.edit', compact('book', 'tags', 'categories', 'subCategories','authors', 'publishers'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update($id)
    {
        try {
            $this->book->update($id, Input::all());
            Flash::message('Cập nhật sách thành công.');

            return langRedirectRoute('admin.book.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.book.edit')->withInput()->withErrors($e->getErrors());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $this->book->delete($id);
        Flash::message('Xóa sách thành công');

        return langRedirectRoute('admin.book.index');
    }

    public function confirmDestroy($id)
    {
        $book = $this->book->find($id);

        return view('backend.book.confirm-destroy', compact('book'));
    }

    public function togglePublish($id)
    {
        return $this->book->togglePublish($id);
    }
}
