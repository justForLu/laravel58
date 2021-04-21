<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redis;

class TestController extends BaseController
{

    public function __construct()
    {
        parent::__construct();

    }

    public function test()
    {

    }


    public function setRedis()
    {
        $arr = [
            1,2,3
        ];
        $this->redis->setex('test', 1000, json_encode($arr));
    }

    public function getRedis()
    {
        $test = $this->redis->get('test');

        print_r(json_decode($test));
        die();
    }

}




