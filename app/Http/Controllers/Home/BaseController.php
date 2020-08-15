<?php
namespace App\Http\Controllers\Home;


use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class BaseController extends Controller
{

    protected $callback;
    protected $currentUser;
    protected $auth;
    protected $userInfo;

    /**
     * 父类构造器
     * BaseController constructor.
     */
    public function __construct(){
        $this->callback = isset($_SERVER['HTTP_REFERER']) ? urlencode($_SERVER['HTTP_REFERER']) : '';

        $this->middleware(function ($request, $next) {
            if(Auth::guard('home')->check()){
                $userInfo = Auth::guard('home')->user();
                $this->userInfo = $userInfo;
                view()->share('userInfo',$userInfo);
            }

            return $next($request);
        });

        view()->share('callback',$this->callback);
    }


    /**
     * 获取友情链接
     */
    public function getLinks()
    {

    }
}
