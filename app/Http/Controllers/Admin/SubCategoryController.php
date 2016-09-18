<?php

namespace Fully\Http\Controllers\Admin;

use View;
use Input;
use Flash;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\SubCategory\SubCategoryInterface;
use Fully\Exceptions\Validation\ValidationException;
use Fully\Repositories\SubCategory\SubCategoryRepository as SubCategory;

/**
 * Class SubCategoryController.
 */
class SubCategoryController extends Controller
{
    protected $subCategory;
    protected $perPage;

    public function __construct(SubCategoryInterface $subCategory)
    {
        $this->subCategory = $subCategory;
        View::share('active', 'blog');
        $this->perPage = config('fully.modules.subCategory.per_page');
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $pagiData = $this->subCategory->paginate(Input::get('page', 1), $this->perPage, true);
        $subCategories = Pagination::makeLengthAware($pagiData->items, $pagiData->totalItems, $this->perPage);

        return view('backend.subCategory.index', compact('subCategories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('backend.subCategory.create', ["groups"=>config("common.subCategory_group")]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        try {
            $this->subCategory->create(Input::all());
            Flash::message('Tạo subCategory thành công');

            return langRedirectRoute('admin.subCategory.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.subCategory.create')->withInput()->withErrors($e->getErrors());
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
        $subCategory = $this->subCategory->find($id);

        return view('backend.subCategory.show', compact('subCategory'));
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
        $subCategory = $this->subCategory->find($id);

        return view('backend.subCategory.edit', ['subCategory'=>$subCategory, "groups"=>config("common.subCategory_group")] );
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
            $this->subCategory->update($id, Input::all());
            Flash::message('Cập nhật subCategory thành công');

            return langRedirectRoute('admin.subCategory.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.subCategory.edit', ['subCategory'=>$id])->withInput()->withErrors($e->getErrors());
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
        $this->subCategory->delete($id);
        Flash::message('Xóa subCategory was thành công.');

        return langRedirectRoute('admin.subCategory.index');
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function confirmDestroy($id)
    {
        $subCategory = $this->subCategory->find($id);

        return view('backend.subCategory.confirm-destroy', compact('subCategory'));
    }
}
