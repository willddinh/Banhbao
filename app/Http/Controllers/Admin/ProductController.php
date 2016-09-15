<?php

namespace Fully\Http\Controllers\Admin;

use Fully\Models\SubCategory;
use Fully\Repositories\SubCategory\SubCategoryInterface;
use View;
use Flash;
use Input;
use Response;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\Product\ProductInterface;
use Fully\Repositories\Category\CategoryInterface;
use Fully\Exceptions\Validation\ValidationException;
use Fully\Repositories\Product\ProductRepository as Product;
use Fully\Repositories\Category\CategoryRepository as Category;

/**
 * Class ProductController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class ProductController extends Controller
{
    protected $product;
    protected $category;
    protected $subCategory;
    protected $perPage;

    public function __construct(ProductInterface $product, CategoryInterface $category, 
                                SubCategoryInterface $subCategory)
    {
        View::share('active', 'product');
        $this->product = $product;
        $this->category = $category;
        $this->subCategory = $subCategory;

        $this->perPage = config('fully.modules.product.per_page');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $pagiData = $this->product->paginate(Input::get('page', 1), $this->perPage, true);
        $products = Pagination::makeLengthAware($pagiData->items, $pagiData->totalItems, $this->perPage);

        return view('backend.product.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $categories = $this->category->findByGroupForDropDown(config("common.const.CATEGORY_PRODUCT"));
        $subCategories =
            $this->subCategory->findByGroupForDropDown(config("common.const.SUBCATEGORY_PRODUCT"));

        return view('backend.product.create', compact('categories', 'subCategories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        try {
            $this->product->create(Input::all());
            Flash::message('Tạo sản phẩm thành công');

            return langRedirectRoute('admin.product.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.product.create')->withInput()->withErrors($e->getErrors());
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
        $product = $this->product->find($id);

        return view('backend.product.show', compact('product'));
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
        $product = $this->product->find($id);
        $tags = null;

        foreach ($product->entity->tags as $tag) {
            $tags .= ','.$tag->name;
        }

        $tags = substr($tags, 1);
        $categories = $this->category->findByGroupForDropDown(config("common.const.CATEGORY_PRODUCT"));
        $subCategories =
            $this->subCategory->findByGroupForDropDown(config("common.const.SUBCATEGORY_PRODUCT"));

        return view('backend.product.edit', compact('product', 'tags', 'categories', 'subCategories'));
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
            $this->product->update($id, Input::all());
            Flash::message('Cập nhật sản phẩm thành công.');

            return langRedirectRoute('admin.product.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.product.edit')->withInput()->withErrors($e->getErrors());
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
        $this->product->delete($id);
        Flash::message('Xóa sản phẩm thành công');

        return langRedirectRoute('admin.product.index');
    }

    public function confirmDestroy($id)
    {
        $product = $this->product->find($id);

        return view('backend.product.confirm-destroy', compact('product'));
    }

    public function togglePublish($id)
    {
        return $this->product->togglePublish($id);
    }
}
