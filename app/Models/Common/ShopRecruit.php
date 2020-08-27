<?php

namespace App\Models\Common;

use App\Models\Base;

class ShopRecruit extends Base
{
    // 门店
    protected $table = 'shop_recruit';

    protected $fillable = ['shop_id','recruit_id','factory_id'];
    

}
