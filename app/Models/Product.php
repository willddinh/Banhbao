<?php

namespace Fully\Models;

use Cviebrock\EloquentSluggable\SluggableTrait;
use Cviebrock\EloquentSluggable\SluggableInterface;
use Fully\Interfaces\ModelInterface as ModelInterface;
use Fully\Models\Traits\EntitySupportTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Article.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class Product extends BaseModel implements ModelInterface, SluggableInterface
{
    use SluggableTrait;
    use SoftDeletes;
    use EntitySupportTrait;

    public $table = 'products';
    protected $fillable = ['discount', 'external_url', 'content', 'meta_keywords', 'meta_description', 'is_published'];
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
        return $this->hasMany('Fully\Models\Category', 'id', 'category_id');
    }

    public function setUrlAttribute($value)
    {
        $this->attributes['url'] = $value;
    }

    public function getUrlAttribute()
    {
        return 'article/'.$this->attributes['slug'];
    }


}
