<?php

namespace App\Models\Common;

use App\Models\Base;

class Label extends Base
{
    // 标签表
    protected $table = 'label';

    protected $fillable = ['name','type','sort','status'];



}
