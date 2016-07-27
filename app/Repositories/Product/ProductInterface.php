<?php

namespace Fully\Repositories\Product;

use Fully\Repositories\RepositoryInterface;


interface ProductInterface extends RepositoryInterface
{
    /**
     * @param $slug
     *
     * @return mixed
     */
    public function getBySlug($slug);
}
