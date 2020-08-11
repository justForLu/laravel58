<?php

namespace App\Models\Common;

use App\Models\Base;

class Recruit extends Base
{
    // 招聘职位信息
    protected $table = 'recruit';

    protected $fillable = ['shop_id','type','sign_up','title','image','picture','posts','salary_up','salary_down','label',
        'num','edu_ask','sex_ask','age_ask','address','longitude','latitude','mobile','base_salary','hourly','payday',
        'food_sub','put_up','insure','remark','other_ask','tasks','job_desc','id_card','interview','physical','interview_date',
        'business','scale','trade','business_desc','business_add','bus_line','meet','status','sort','is_top','is_recommend',
    ];


}
