<?php
namespace App\Http\Controllers\Home;


use App\Repositories\Home\CityRepository as City;
use Illuminate\Http\Request;

class CityController extends BaseController
{

    protected $city;

    public function __construct(City $city)
    {
        parent::__construct();

        $this->city = $city;
    }

	public function index()
    {
        return view('home.index.index');
    }

    /**
     * 获取区域id上级区域
     *
     * @param Request|Request $request
     * @return \Illuminate\Http\Response
     */
    public function get_city_path(Request $request)
    {
        $id = $request->input('id');
        $list = $this->city->get_city_path($id);

        return response()->json($list);
    }

    /**
     * 获取区域id下级区域
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function get_city_list(Request $request){
        $id = $request->input('id');
        if(!isset($id) || empty($id)){
            $params['parent'] = 0;
            $params['grade'] = 1;
        }else{
            $params['parent'] = $id;
        }

        $list = $this->city->getCityList($params);
        return response()->json($list);
    }

    /**
     * 根据城市id获取与该城市关联的省市区等信息
     * @param $id
     * @param $type
     * @return array
     */
    static function getCityArrString($id,$type = 'arr'){
        $cityLabel = array('province','city','area');
        $cityArr = array();
        $cityId = array();
        $cityName='';

        do{
            $city = \App\Models\Common\City::select('*')->where('id',$id)->first($id);
            if($city){
                $cityArr[$cityLabel[$city->grade-1]] = $city->title;
                $cityId[$cityLabel[$city->grade-1]] = $city->id;
                $cityName=$city->title.$cityName;
                $id = $city->parent;
            }
        }while(isset($city->parent) && $city->parent != 0);

        if($type == 'string'){
            return $cityName;//返回字符串
        }elseif($type == 'id'){
            return $cityId;//返回ID
        }else{
            return $cityArr;//返回数组
        }
    }
}
