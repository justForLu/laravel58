<?php

namespace App\Models\Common;

use App\Models\Base;

class Join extends Base
{
    // 加盟
    protected $table = 'join_in';

    protected $fillable = ['type','name','mobile','email','address','years','status','admin_id'];
    

}
