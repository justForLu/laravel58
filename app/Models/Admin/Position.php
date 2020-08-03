<?php

namespace App\Models\Admin;

use App\Models\Base;

class Position extends Base
{
    // 职位
    protected $table = 'position';

    protected $fillable = ['name','sort','status'];



}
