<?php

namespace Fully\Repositories\TreeCategory;

use Fully\Repositories\RepositoryInterface;

/**
 * Interface TreeCategoryInterface.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
interface TreeCategoryInterface extends RepositoryInterface
{
    public function findByGroup($group);

    public function findByGroupForDropDown($group);

    public function getCategoryAsKendoDataSource($code);
}
