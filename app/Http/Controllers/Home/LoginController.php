<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class LoginController extends BaseController
{

	public function login()
    {


        return view('home.login.login');
    }

    public function register()
    {


        return view('home.login.register');
    }

    public function index()
    {


        return view('home.login.login');
    }

}
