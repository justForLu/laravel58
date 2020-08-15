<?php
namespace App\Http\Controllers\Home;


use Illuminate\Http\Request;

class NewsController extends BaseController
{

    public function __construct(Request $request)
    {
        parent::__construct($request);


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
