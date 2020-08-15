<?php

namespace App\Models\Common;

use App\Models\Base;

class Factory extends Base
{
    // 工厂
    protected $table = 'factory';

    protected $fillable = ['name','image','picture','province','city','area','phone','scale','label','trade','avg_salary',
        'desc','longitude','latitude','address','bus_line','meet','status','sort','is_top','is_recommend'];



}
