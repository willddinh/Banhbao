<?php

namespace Fully\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\SluggableTrait;
use Cviebrock\EloquentSluggable\SluggableInterface;
use Fully\Interfaces\ModelInterface as ModelInterface;

class BookRate extends BaseModel
{

    public $table = 'book_rates';


    protected $fillable = ['comment', 'star'];

    public function book()
    {
        return $this->belongsTo("Fully\Models\Book");
    }

}
