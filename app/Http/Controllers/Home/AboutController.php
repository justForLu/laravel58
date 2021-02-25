<?php
namespace App\Http\Controllers\Home;


class AboutController extends BaseController
{


    public function __construct()
    {
        parent::__construct();

    }


    /**
     * 关于我们
     */
    public function index()
    {
        return view('home.about.index');
    }

}
