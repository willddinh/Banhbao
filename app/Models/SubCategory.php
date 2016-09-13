<?php

namespace Fully\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{

    public $table = 'sub_categories';
    public $timestamps = false;
    protected $fillable = ['title', 'group'];

    public function entities()
    {
        return $this->belongsToMany('Fully\Models\Entity');
    }

}
