<?php

namespace Fully\Models;

use Fully\Events\Observer\UserAuditObserver;
use Illuminate\Database\Eloquent\SoftDeletes;

class Entity extends BaseModel
{
    use SoftDeletes;
    public $table = 'entity';
    protected $fillable = array('title', 'price', 'currency_unit');

    protected $dates = ['deleted_at'];

    protected static function boot()
    {
        parent::boot();
        self::observe(new UserAuditObserver());
    }


    public function tags()
    {
        return $this->belongsToMany('Fully\Models\Tag', 'entity_tags');
    }

    public function subCategories()
    {
        return $this->belongsToMany('Fully\Models\SubCategory', 'entity_categories');
    }

    


}
