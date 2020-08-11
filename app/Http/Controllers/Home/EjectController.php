<?php
namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;

class EjectController extends BaseController
{

    /**
     * 弹出层控制器
     * EjectController constructor.
     */

    public function __construct()
    {
        parent::__construct();


    }


    /**
     * 地图弹出层
     * @param string $longitude
     * @param string $latitude
     * @param string $address
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function ejectMap($longitude = '', $latitude = '', $address = '')
    {

        return view('home.eject.ejectMap',compact('longitude','latitude','address'));
    }

}
