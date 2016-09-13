<?php

namespace Fully\Repositories\Entity;

use Fully\Repositories\RepositoryInterface;


interface EntityInterface extends RepositoryInterface
{
    /**
     * @param $slug
     *
     * @return mixed
     */
    public function getBySlug($slug);
}
