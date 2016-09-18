<?php

namespace Fully\Repositories\Publisher;

use Fully\Repositories\RepositoryInterface;

/**
 * Interface PublisherInterface.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
interface PublisherInterface extends RepositoryInterface
{
    public function findByGroupForDropDown();
}
