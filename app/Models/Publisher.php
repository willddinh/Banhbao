<?php

namespace Fully\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\SluggableTrait;
use Cviebrock\EloquentSluggable\SluggableInterface;
use Fully\Interfaces\ModelInterface as ModelInterface;

class Publisher extends Model implements ModelInterface , SluggableInterface
{
    use SluggableTrait;

    public $table = 'publishers';
    protected $fillable = array('name');
    protected $appends = ['url'];

    protected $sluggable = array(
        'build_from' => 'name',
        'save_to' => 'slug',
    );

    public function books()
    {
        return $this->hasMany('Fully\Models\Book');
    }

    public function setUrlAttribute($value)
    {
        $this->attributes['url'] = $value;
    }

    public function getUrlAttribute()
    {
        return '/publisher/'.$this->attributes['slug'];
    }
}
