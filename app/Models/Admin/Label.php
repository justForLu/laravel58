<?php

namespace App\Models\Admin;

use App\Models\Base;

class Label extends Base
{
    // 标签表
    protected $table = 'label';

    protected $fillable = ['name','type','sort','status'];



}
