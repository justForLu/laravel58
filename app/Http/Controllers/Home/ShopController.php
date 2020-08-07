<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class ShopController extends BaseController
{

	public function index()
    {


        return view('home.shop.index');
    }

    public function detail()
    {


        return view('home.shop.detail');
    }

}
