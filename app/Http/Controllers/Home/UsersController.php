<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class UsersController extends BaseController
{

	public function index()
    {


        return view('home.user.index');
    }

    public function message()
    {


        return view('home.user.message');
    }

    public function cash_out()
    {


        return view('home.user.cash_out');
    }

    public function info()
    {


        return view('home.user.info');
    }

    public function collect()
    {


        return view('home.user.collect');
    }

    public function portrait()
    {


        return view('home.user.portrait');
    }

    public function account()
    {


        return view('home.user.account');
    }

}
