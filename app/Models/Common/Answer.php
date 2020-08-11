<?php

namespace App\Models\Common;

use App\Models\Base;

class Answer extends Base
{
    // 问题的回答
    protected $table = 'answer';

    protected $fillable = ['question_id','content','user_id','is_show','status','sort'];



}
