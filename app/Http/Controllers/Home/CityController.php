<?php
namespace App\Http\Controllers\Home;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class CityController extends BaseController
{

	public function index()
    {
        return view('home.index.index');
    }

}
