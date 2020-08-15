<?php
namespace App\Http\Controllers\Home;

use App\Enums\BasicEnum;
use App\Repositories\Home\Criteria\ShopCriteria;
use App\Repositories\Home\ShopRepository as Shop;
use App\Repositories\Home\CityRepository as City;
use App\Repositories\Home\RecruitRepository as Recruit;
use App\Repositories\Home\FactoryRepository as Factory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class ShopController extends BaseController
{

    protected $shop;
    protected $city;
    protected $recruit;
    protected $factory;

    public function __construct(Request $request, Shop $shop, City $city, Recruit $recruit, Factory $factory)
    {
        parent::__construct($request);

        $this->shop = $shop;
        $this->city = $city;
        $this->recruit = $recruit;
        $this->factory = $factory;

        view()->share('menu','Shop');
    }


    /**
     * 门店列表页
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
	public function index(Request $request)
    {
        $params = $request->all();

        $this->shop->pushCriteria(new ShopCriteria($params));

        $list = $this->shop->paginate(Config::get('home.page_size',10));

        //省份
        $where2['parent'] = 0;
        $province = $this->city->getCityList($where2);

        //默认城市（默认河南）
        $where3['parent'] = 10;   //河南的ID是10
        $city = $this->city->getCityList($where3);

        //大家想去
        $where4['is_recommend']['EQ'] = BasicEnum::ACTIVE;
        $recruit = $this->recruit->getList('*',$where4,5,['factory']);

        //附近门店
        $where5['is_recommend']['EQ'] = BasicEnum::ACTIVE;
        $shop = $this->shop->getList('*',$where5,5);

        //热门招聘企业
        $where6['is_recommend']['EQ'] = BasicEnum::ACTIVE;
        $recruit_hot = $this->recruit->getList('*',$where6,5,['factory']);

        //报名排行榜
        $where7['is_recommend']['EQ'] = BasicEnum::ACTIVE;
        $factory_top = $this->factory->getList('*',$where6,10);
        if($factory_top){
            $factory_ids = array_column($factory_top,'id');
            $where_r['factory_id']['IN'] = $factory_ids;
            $recruit_fac = $this->recruit->getList(['id','factory_id'],$where_r);
            $recruit_fac = set_index($recruit_fac,'factory_id');
            foreach ($factory_top as &$v){
                $v['recruit_id'] = $recruit_fac[$v['id']]['id'] ?? 0;
            }
        }


        return view('home.shop.index',compact('list','province','city','recruit','shop','recruit_hot','factory_top'));
    }


    /**
     * 门店详情页
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function detail($id)
    {


        return view('home.shop.detail');
    }

}
