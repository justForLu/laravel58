<?php
namespace App\Http\Controllers\Home;


use App\Enums\BasicEnum;
use App\Http\Controllers\Controller;
use App\Repositories\Home\CityRepository;
use App\Models\Common\City;
use Illuminate\Support\Facades\Auth;

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

            //城市
            $province_arr = session('province_arr');
            $city_info = session('city_info');
            if(!$province_arr){
                $province = City::where('parent',0)
                    ->where('status', BasicEnum::ACTIVE)
                    ->orderBy('sort','DESC')
                    ->orderBy('id','ASC')
                    ->get()->toArray();

                $province_arr = $province;
                session(['province_arr' => $province_arr]);
            }
            if(!$city_info){
                $city_info = ['id' => 148, 'province_id' => 10, 'title' => '郑州'];    //默认郑州

                session(['city_info' => $city_info]);
            }

            view()->share('province_arr', $province_arr);
            view()->share('city_info', $city_info);

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
