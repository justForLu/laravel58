<?php

namespace App\Models\Common;

use App\Models\Base;

class News extends Base
{
    // 新闻资讯
    protected $table = 'news';

    protected $fillable = ['title','category_id','desc','image','content','sort','status','read','author','is_top','is_recommend'];



}
