<?php

namespace Fully\Http\Controllers\Admin;

use Exception;
use View;
use Input;
use Flash;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\TreeCategory\TreeCategoryInterface;
use Fully\Exceptions\Validation\ValidationException;
use Fully\Repositories\TreeCategory\TreeCategoryRepository as TreeCategory;

/**
 * Class TreeCategoryController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class TreeCategoryController extends Controller
{
    protected $category;
    protected $perPage;

    public function __construct(TreeCategoryInterface $category)
    {
        $this->category = $category;
        View::share('active', 'tree-category');
        $this->perPage = config('fully.modules.category.per_page');
    }

    public function getTreeCategories($group)
    {
        $group = 'article';
        if(!$group) throw new Exception("mã nhóm không tồn tại");
        $kendoDataSource = $this->category->getCategoryAsKendoDataSource($group);
        return view('backend.tree_category.index')->with('kendoDataSource', json_encode($kendoDataSource));

    }
}
