<?php

namespace Fully\Events\Observer;

use Fully\Models\Book;


class ElasticsearchObserver
{


    public function created(Book $book)
    {

        \Elasticsearch::index([
            'index' => 'banhbao',
            'type' => 'books',
            'id' => $book->id,
            'body' => $book->toArray()
        ]);
    }

    public function updated(Book $book)
    {
        \Elasticsearch::index([
            'index' => 'banhbao',
            'type' => 'books',
            'id' => $book->id,
            'body' => $book->toArray()
        ]);
    }

    public function deleted(Book $book)
    {
        \Elasticsearch::delete([
            'index' => 'banhbao',
            'type' => 'books',
            'id' => $book->id
        ]);
    }
}
