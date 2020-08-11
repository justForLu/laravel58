<?php
namespace App\Http\Controllers\Home;


use App\Http\Controllers\Controller;
use App\Models\Admin\Manager;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Request;

class BaseController extends Controller
{

    protected $currentUser;
    protected $auth;
    protected $userInfo;

    /**
     * 父类构造器
     * BaseController constructor.
     */
    public function __construct(){

    }


    /**
     * 获取友情链接
     */
    public function getLinks()
    {

    }
}
