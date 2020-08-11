<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class NewsController extends BaseController
{

    public function __construct()
    {
        parent::__construct();


        view()->share('menu','News');
    }

	public function index()
    {


        return view('home.news.index');
    }

    public function detail()
    {


        return view('home.news.detail');
    }

}
