<?php

namespace Fully\Events\Observer;

use Fully\Models\Book;


class ElasticsearchObserver
{


    private function createInputs($sample){
        $strArr = explode(" ",$sample);
        $result = [];
        do{
            array_push($result, implode(" ",$strArr));
            array_shift($strArr);
        }
        while(count($strArr) > 0);
        return $result;
    }

    public function created(Book $book)
    {
       /* $input = $this->createInputs($book->entity->title." ".$book->author->name);
        $output = $book->entity->title." - ".$book->author->name;
        $payload = ["photo" => $book->path];
        \Elasticsearch::index([
            'index' => 'banhbao',
            'type' => 'books',
            'id' => $book->entity_id,
            'body' => [ "title"=>$book->entity->title, "id" =>$book->entity_id,
                "book_suggest"=>["input" => $input,
                "output"=>$output, "payload"=>$payload] ]
        ]);*/
    }

    public function updated(Book $book)
    {
        $input = $this->createInputs($book->entity->title." ".$book->author->name);
        $output = $book->entity->title." - ".$book->author->name;
        $payload = ["photo" => $book->path, "entity_id"=>$book->entity_id];
        \Elasticsearch::index([
            'index' => 'banhbao',
            'type' => 'books',
            'id' => $book->entity_id,
            'body' => [ "title"=>$book->entity->title, "id" =>$book->entity_id,
                "book_suggest"=>["input" => $input,
                    "output"=>$output, "payload"=>$payload] ]
        ]);
    }

    public function deleted(Book $book)
    {
        \Elasticsearch::delete([
            'index' => 'banhbao',
            'type' => 'books',
            'id' => $book->entity_id
        ]);
    }
}
