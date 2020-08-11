<?php
namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;

class ShopController extends BaseController
{

    public function __construct()
    {
        parent::__construct();


        view()->share('menu','Shop');
    }


    /**
     * 门店列表页
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
	public function index(Request $request)
    {
        $params = $request->all();


        return view('home.shop.index');
    }

    /**
     * 门店详情页
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function detail($id)
    {


        return view('home.shop.detail');
    }

}
