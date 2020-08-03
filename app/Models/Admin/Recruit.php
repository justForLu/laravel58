<?php

namespace App\Models\Admin;

use App\Models\Base;

class Recruit extends Base
{
    // 招聘职位信息
    protected $table = 'recruit';

    protected $fillable = ['shop_id','type','sign_up','title','image','picture','salary','label','num','sex_ask','age_ask',
        'address','longitude','latitude','mobile','hourly','payday','food_sub','put_up','insure','remark','other_ask',
        'tasks','job_desc','id_card','interview','physical','interview_date','status','sort','is_top','is_recommend',
    ];


}
