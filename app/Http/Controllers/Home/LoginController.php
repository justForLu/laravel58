<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class LoginController extends BaseController
{

	public function login_page()
    {


        return view('home.login.login');
    }

    public function login()
    {

    }


    public function register_page()
    {


        return view('home.login.register');
    }

    public function register()
    {

    }


    public function index()
    {

        return view('home.login.login');
    }

}
