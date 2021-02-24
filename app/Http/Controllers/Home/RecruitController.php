<?php
namespace App\Http\Controllers\Home;

use App\Enums\BasicEnum;
use App\Enums\QuestionEnum;
use App\Enums\RecruitEnum;
use App\Models\Common\Collect;
use App\Repositories\Home\Criteria\RecruitCriteria;
use App\Repositories\Home\RecruitRepository as Recruit;
use App\Repositories\Home\LabelRepository as Label;
use App\Repositories\Home\PositionRepository as Position;
use App\Repositories\Home\ShopRepository as Shop;
use App\Repositories\Home\FactoryRepository as Factory;
use App\Repositories\Home\QuestionRepository as Question;
use App\Repositories\Home\AnswerRepository as Answer;
use App\Repositories\Home\EnrollRepository as Enroll;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class RecruitController extends BaseController
{

    protected $recruit;
    protected $label;
    protected $position;
    protected $shop;
    protected $factory;
    protected $question;
    protected $answer;
    protected $enroll;

    public function __construct(Recruit $recruit, Label $label, Position $position, Shop $shop, Factory $factory,
                                Question $question, Answer $answer, Enroll $enroll)
    {
        parent::__construct();

        $this->recruit = $recruit;
        $this->label = $label;
        $this->position = $position;
        $this->shop = $shop;
        $this->factory = $factory;
        $this->question = $question;
        $this->answer = $answer;
        $this->enroll = $enroll;

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
        if($params){
            foreach ($params as &$param){
                $param = trim($param);
            }
        }

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


        return view('home.recruit.index',compact('params','list','params','position','label','recruit',
            'recruit_hot'));
    }


    /**
     * 找工作详情页
     * @param $id
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function detail($id, Request $request)
    {
        $params = $request->all();
        $shop_id = isset($params['shop_id']) && !empty($params['shop_id']) ? $params['shop_id'] : 0;

        //招工信息
        $data = $this->recruit->with(array('factory'))->find($id);
        //如果是从门店那里过来的，联系方式展示为门店的联系方式
        if($shop_id){
            $shop_info = $this->shop->find($shop_id);

            $data->factory->phone = isset($shop_info->phone) ? $shop_info->phone : '';
            $data->factory->mobile = isset($shop_info->mobile) ? $shop_info->mobile : '';
        }
        //工厂展示图集
        $data->picture_path = array_values(FileController::getFilePath($data->factory->picture));
        $count_pic = count($data->picture_path);
        //福利标签
        //标签
        $label_ids = explode(',',$data->factory->label);
        $where1['id'] = $label_ids;
        $data->label_arr = $this->label->getList($where1);

        //报名人数
        $where2 = [
            'recruit_id' => $id
        ];
        $count_enroll = $this->enroll->getCount($where2);

        //问答信息
        $where3 = [
            'recruit_id' => $id,
            'type' => QuestionEnum::FACTORY,
        ];
        $question = $this->question->getList($where3);
        $count_ques = count($question);
        if ($question){
            foreach ($question as &$v){
                $where_a['question_id'] = $v['id'];
                $list_a = $this->answer->getList($where_a);
                $v['answer'] = $list_a;
            }
        }

        $user_id = isset($this->userInfo->id) ? $this->userInfo->id : 0;
        //收藏信息
        $is_collect = Collect::where('user_id',$user_id)->where('type',2)->where('shop_id',$id)->count();


        return view('home.recruit.detail',compact('data','count_pic','count_enroll','count_ques',
            'user_id','is_collect'));
    }
}
