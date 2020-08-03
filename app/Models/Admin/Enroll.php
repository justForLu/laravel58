<?php

namespace App\Models\Admin;

use App\Models\Base;

class Enroll extends Base
{
    // 报名表
    protected $table = 'enroll';

    protected $fillable = ['recruit_id','user_id','name','mobile'];



}
