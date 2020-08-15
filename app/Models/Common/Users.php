<?php

namespace App\Models\Common;

use App\Models\Base;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Users extends Authenticatable
{
    const CREATED_AT='create_time';
    const UPDATED_AT='update_time';
    const DELETED_AT='delete_time';

    protected $dateFormat = 'U';
    // 用户
    protected $table = 'users';

    protected $fillable = ['id','name','nickname','password','remember_token','login_ip','login_time','image','mobile','email','id_card','sex',
        'age','birthday','province','city','area','bank_card','bank_name','bank_province','bank_city','bank_area',
        'card_image1', 'card_image2','status'
    ];


}
