<?php

namespace App\Models\Common;

use App\Models\Base;

class Recruit extends Base
{
    // 招聘职位信息
    protected $table = 'recruit';

    protected $fillable = ['factory_id','sign_up','title','posts','salary_up','salary_down','num','edu_ask',
        'sex_ask','age_ask','base_salary','hourly','payday','food_sub','put_up','insure','remark','other_ask','tasks',
        'job_desc','id_card','interview','physical','interview_date','status','sort','is_top','is_recommend',
    ];

    /**
     * 工厂
     */
    public function factory(){
        return $this->hasOne(Factory::class,'id','factory_id');
    }
}
