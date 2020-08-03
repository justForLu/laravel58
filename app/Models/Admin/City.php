<?php

namespace App\Models\Admin;

use App\Models\Base;

class City extends Base
{
    // 城市
    protected $table = 'city';

    protected $fillable = ['title','parent','path','grade','sort'];



}
