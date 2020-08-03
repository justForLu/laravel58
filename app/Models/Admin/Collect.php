<?php

namespace App\Models\Admin;

use App\Models\Base;

class Collect extends Base
{
    // 我的收藏
    protected $table = 'collect';

    protected $fillable = ['user_id','type','shop_id','recruit_id'];



}
