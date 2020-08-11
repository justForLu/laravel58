<?php

namespace App\Models\Common;

use App\Models\Base;

class Question extends Base
{
    // 问题
    protected $table = 'question';

    protected $fillable = ['recruit_id','shop_id','type','title','user_id','is_show','status','sort'];



}
