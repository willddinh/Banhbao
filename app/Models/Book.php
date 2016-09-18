<?php

namespace Fully\Models;

use Cviebrock\EloquentSluggable\SluggableTrait;
use Cviebrock\EloquentSluggable\SluggableInterface;
use Fully\Interfaces\ModelInterface as ModelInterface;
use Fully\Models\Traits\EntitySupportTrait;
use Illuminate\Database\Eloquent\SoftDeletes;


class Book extends BaseModel implements ModelInterface, SluggableInterface
{
    use SluggableTrait;
    use SoftDeletes;
    use EntitySupportTrait;

    public $table = 'books';
    protected $fillable = ['discount', 'external_url', 'content', 'meta_keywords', 'meta_description', 'is_published', 'isbn', 'size', 'rent_price', 'page_num'];
    protected $appends = ['url'];

    protected $sluggable = array(
        'build_from' => 'entity.title',
        'source' => 'entity.title',
        'save_to' => 'slug',
    );

    protected $dates = ['deleted_at'];


    public function entity(){
        return $this->belongsTo('Fully\Models\Entity');
    }

    public function category()
    {
        return $this->belongsTo('Fully\Models\Category');
    }

    public function publisher(){
        return $this->belongsTo('Fully\Models\Publisher');
    }

    public function author(){
        return $this->belongsTo('Fully\Models\Author');
    }


    public function rates(){
        return $this->hasMany('Fully\Models\BookRate');
    }



    public function setUrlAttribute($value)
    {
        $this->attributes['url'] = $value;
    }

    public function getUrlAttribute()
    {
        return 'book/'.$this->attributes['slug'];
    }


}
