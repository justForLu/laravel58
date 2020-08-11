<?php

namespace App\Models\Common;

use App\Models\Base;

class Shop extends Base
{
    // 门店
    protected $table = 'shop';

    protected $fillable = ['name','image','picture','job','num','purpose','province','city','area','address','longitude',
        'latitude','phone','mobile','sort','status','is_top','is_recommend',
    ];
    

}
