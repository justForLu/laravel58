<?php
namespace App\Http\Controllers\Home;

use App\Enums\BasicEnum;
use App\Enums\RecruitEnum;
use App\Repositories\Home\Criteria\RecruitCriteria;
use App\Repositories\Home\RecruitRepository as Recruit;
use App\Repositories\Home\LabelRepository as Label;
use App\Repositories\Home\PositionRepository as Position;
use App\Repositories\Home\ShopRepository as Shop;
use App\Repositories\Home\FactoryRepository as Factory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class RecruitController extends BaseController
{

    protected $recruit;
    protected $label;
    protected $position;
    protected $shop;
    protected $factory;

    public function __construct(Request $request, Recruit $recruit, Label $label, Position $position, Shop $shop, Factory $factory)
    {
        parent::__construct($request);

        $this->recruit = $recruit;
        $this->label = $label;
        $this->position = $position;
        $this->shop = $shop;
        $this->factory = $factory;

        view()->share('menu','Recruit');
    }

    /**
     * 找工作列表页
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
	public function index(Request $request)
    {
        $params = $request->all();

        $this->recruit->pushCriteria(new RecruitCriteria($params));

        $list = $this->recruit->with(array('factory'))->paginate(Config::get('home.page_size',10));
        //处理福利标签
        if($list){
            foreach ($list as &$v){
                if($v->factory->label){
                    //标签
                    $label_ids = explode(',',$v->factory->label);
                    $where['id'] = $label_ids;

                    $v->label_arr = $this->label->getList($where);
                }
                if($v->posts){
                    //职位
                    $posts = explode(',',$v->posts);

                    $where_p['id'] = $posts;

                    $v->posts_arr = $this->position->getList($where_p);

                }
            }
        }
        //岗位列表
        $where2['type'] = RecruitEnum::FACTORY;
        $position = $this->position->getList($where2);

        //福利标签列表
        $where3['type'] = RecruitEnum::FACTORY;
        $label = $this->label->getList($where3);

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

        //最近浏览职位（可把最近浏览职位存到Redis里，从Redis里取数据）


        return view('home.recruit.index',compact('list','params','position','label','recruit','shop',
            'recruit_hot','factory_top'));
    }


    /**
     * 找工作详情页
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function detail($id)
    {
        return view('home.recruit.detail');
    }
}
