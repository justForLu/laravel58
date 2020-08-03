<?php

namespace App\Models\Admin;

use App\Models\Base;

class Adviser extends Base
{
    // 门店就业顾问
    protected $table = 'adviser';

    protected $fillable = ['shop_id','image','name','position','mobile','sort','status'];



}
