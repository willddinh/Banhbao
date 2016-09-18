<?php

namespace Fully\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Setting.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class Setting extends BaseModel
{
    public $table = 'settings';
    public $fillable = ['settings', 'lang'];
}
