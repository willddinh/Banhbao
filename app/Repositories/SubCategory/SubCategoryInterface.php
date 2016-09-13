<?php

namespace Fully\Repositories\SubCategory;

use Fully\Repositories\RepositoryInterface;

/**
 * Interface SubCategoryInterface.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
interface SubCategoryInterface extends RepositoryInterface
{
    public function findByGroup($group);

    public function findByGroupForDropDown($group);
}
