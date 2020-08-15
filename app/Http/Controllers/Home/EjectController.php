<?php
namespace App\Http\Controllers\Home;


use Illuminate\Http\Request;

class EjectController extends BaseController
{


    public function __construct(Request $request)
    {
        parent::__construct($request);


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
