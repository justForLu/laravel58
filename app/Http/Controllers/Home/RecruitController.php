<?php
namespace App\Http\Controllers\Home;

use App\Enums\BasicEnum;
use App\Enums\RecruitEnum;
use App\Repositories\Admin\Criteria\RecruitCriteria;
use App\Repositories\Home\RecruitRepository as Recruit;
use App\Repositories\Home\LabelRepository as Label;
use App\Repositories\Home\PositionRepository as Position;
use App\Repositories\Home\ShopRepository as Shop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class RecruitController extends BaseController
{

    protected $recruit;
    protected $label;
    protected $position;
    protected $shop;

    public function __construct(Recruit $recruit, Label $label, Position $position, Shop $shop)
    {
        parent::__construct();

        $this->recruit = $recruit;
        $this->label = $label;
        $this->position = $position;
        $this->shop = $shop;

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

        $list = $this->recruit->paginate(Config::get('home.page_size',10));
        //处理福利标签
        if($list){
            foreach ($list as &$v){
                if($v->label){
                    $label_ids = explode(',',$v->label);
                    $where['id'] = $label_ids;

                    $v->label_arr = $this->label->getList($where);
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
        $where4['is_commend'] = BasicEnum::ACTIVE;
        $recruit = $this->recruit->getList($where4,5);

        //附近门店
        $where5['is_recommend'] = BasicEnum::ACTIVE;
        $shop = $this->shop->getList($where5,5);

        //热门招聘企业
        $where6['is_recommend'] = BasicEnum::ACTIVE;
        $recruit_hot = $this->recruit->getList($where6,5);

        //报名排行榜

        //最近浏览职位（可把最近浏览职位存到Redis里，从Redis里取数据）


        return view('home.recruit.index',compact('list','params','position','label'));
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
