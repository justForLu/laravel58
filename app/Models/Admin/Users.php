<?php

namespace App\Models\Admin;

use App\Models\Base;

class Users extends Base
{
    // 用户
    protected $table = 'users';

    protected $fillable = ['name','nickname','password','login_ip','login_time','image','mobile','email','id_card','sex',
        'age','birthday','province','city','area','bank_card','bank_name','bank_province','bank_city','bank_area',
        'card_image1', 'card_image2','status'
    ];


}
