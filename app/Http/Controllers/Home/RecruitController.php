<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class RecruitController extends BaseController
{

	public function index()
    {


        return view('home.recruit.index');
    }

    public function detail()
    {
        return view('home.recruit.detail');
    }
}
