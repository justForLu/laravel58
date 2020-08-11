<?php

namespace App\Models\Common;

use App\Models\Base;

class Position extends Base
{
    // 职位
    protected $table = 'position';

    protected $fillable = ['name','type','sort','status'];



}
