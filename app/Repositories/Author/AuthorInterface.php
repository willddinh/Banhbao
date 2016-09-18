<?php

namespace Fully\Repositories\Author;

use Fully\Repositories\RepositoryInterface;

/**
 * Interface AuthorInterface.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
interface AuthorInterface extends RepositoryInterface
{
    public function findByGroupForDropDown();
}
