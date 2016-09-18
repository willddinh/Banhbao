<?php

namespace Fully\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Faq.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class Faq extends BaseModel
{
    public $table = 'faqs';
    protected $fillable = array('question', 'answer');
}
