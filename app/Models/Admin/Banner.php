<?php

namespace App\Models\Admin;

use App\Models\Base;

class Banner extends Base
{
    // 幻灯片
    protected $table = 'banner';

    protected $fillable = ['title','image','link','alt','type','sort','status'];



}
