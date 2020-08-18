<?php

namespace App\Models\Common;

use App\Models\Base;

class Collect extends Base
{
    // 我的收藏
    protected $table = 'collect';

    protected $fillable = ['user_id','type','shop_id','recruit_id'];


    /**
     * 招工
     */
    public function recruit(){
        return $this->hasOne(Recruit::class,'id','recruit_id');
    }

    /**
     * 工厂
     */
    public function shop(){
        return $this->hasOne(Shop::class,'id','shop_id');
    }

}
