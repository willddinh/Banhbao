<?php

namespace Fully\Repositories\Book;

use Fully\Repositories\RepositoryInterface;


interface BookInterface extends RepositoryInterface
{
    /**
     * @param $slug
     *
     * @return mixed
     */
    public function getBySlug($slug);
}
