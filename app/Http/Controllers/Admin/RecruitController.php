<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Enums\BoolEnum;
use App\Enums\RecruitEnum;
use App\Http\Requests\Admin\RecruitRequest;
use App\Repositories\Admin\Criteria\RecruitCriteria;
use App\Repositories\Admin\RecruitRepository as Recruit;
use App\Repositories\Admin\PositionRepository as Position;
use App\Repositories\Admin\FactoryRepository as Factory;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class RecruitController extends BaseController
{
    /**
     * @var Recruit
     */
    protected $recruit;
    protected $factory;
    protected $position;
    protected $log;

    public function __construct(Recruit $recruit, Factory $factory, Position $position, LogRepository $log)
    {
        parent::__construct();

        $this->recruit = $recruit;
        $this->factory = $factory;
        $this->position = $position;
        $this->log = $log;
    }
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $params = $request->all();

        $this->recruit->pushCriteria(new RecruitCriteria($params));

        $list = $this->recruit->paginate(Config::get('admin.page_size',10));

        return view('admin.recruit.index',compact('params','list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //获取工厂列表
        $select1 = ['id','name'];
        $factory_arr = $this->factory->getList($select1);

        //获取职位
        $where2['type'] = RecruitEnum::FACTORY;
        $position_arr = $this->position->getList($where2);

        return view('admin.recruit.create', compact('factory_arr','position_arr'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param RecruitRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(RecruitRequest $request)
    {
        $params = $request->all();

        //每个工厂禁止发布多条招聘信息
        $where1 = [];
        if($params['factory_id'] ?? 0){
            $where1['factory_id'] = $params['factory_id'] ?? 0;
        }
        if($where1){
            $is_exist = $this->recruit->getList('*',$where1);
            if($is_exist){
                return $this->ajaxError("每个工厂只能发布一条招工信息");
            }
        }

        //招聘职位
        if($params['posts']){
            $posts = implode(',',$params['posts']);
        }else{
            $posts = '';
        }

        $data = [
            'factory_id' => $params['factory_id'] ?? 0,
            'title' => $params['title'] ?? '',
            'posts' => $posts,
            'num' => $params['num'] ?? 0,
            'salary_up' => $params['salary_up'] ?? 0,
            'salary_down' => $params['salary_down'] ?? 0,
            'edu_ask' => $params['edu_ask'] ?? '',
            'sex_ask' => $params['sex_ask'] ?? '',
            'age_ask' => $params['age_ask'] ?? '',
            'base_salary' => $params['base_salary'] ?? 0,
            'hourly' => $params['hourly'] ?? 0,
            'payday' => $params['payday'] ?? '',
            'food_sub' => $params['food_sub'] ?? '',
            'put_up' => $params['put_up'] ?? '',
            'insure' => $params['insure'] ?? '',
            'remark' => $params['remark'] ?? '',
            'other_ask' => $params['other_ask'] ?? '',
            'tasks' => $params['tasks'] ?? '',
            'job_desc' => $params['job_desc'] ?? '',
            'id_card' => $params['id_card'] ?? '',
            'interview' => $params['interview'] ?? '',
            'physical' => $params['physical'] ?? '',
            'interview_date' => $params['interview_date'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? BoolEnum::NO,
            'is_recommend' => $params['is_recommend'] ?? BoolEnum::NO,
            'create_time' => time()
        ];

        $result = $this->recruit->create($data);
        $this->log->writeOperateLog($request,'添加招聘信息');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/recruit'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function edit($id,Request $request)
    {
        $data = $this->recruit->find($id);

        //获取工厂列表
        $factory_id = $data->factory_id;
        $select1 = ['id','name'];
        $where1 = [];
        if($factory_id){
            $where1['id'] = $factory_id;
        }
        $factory_arr = $this->factory->getList($select1,$where1);

        //获取职位列表
        $posts = $data->posts ?? '';
        $posts = explode(',',$posts);
        $where2['type'] = RecruitEnum::FACTORY;
        $position_arr = $this->position->getList($where2);
        if($position_arr){
            foreach ($position_arr as &$v){
                if(in_array($v['id'],$posts)){
                    $v['checked'] = 1;
                }else{
                    $v['checked'] = 0;
                }
            }
        }

        return view('admin.recruit.edit',compact('data','factory_arr','position_arr'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param RecruitRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(RecruitRequest $request, $id)
    {
        $params = $request->filterAll();
        //每个工厂禁止发布多条招聘信息
        $where1 = [];
        if($params['factory_id'] ?? 0){
            $where1['factory_id'] = $params['factory_id'] ?? 0;
        }
        if($where1){
            $is_exist = $this->recruit->getList('*',$where1);
            if($is_exist){
                return $this->ajaxError("每个工厂只能发布一条招工信息");
            }
        }

        //招聘职位
        if(isset($params['posts']) && $params['posts']){
            $posts = implode(',',$params['posts']);
        }else{
            $posts = '';
        }

        $data = [
            'factory_id' => $params['factory_id'] ?? 0,
            'title' => $params['title'] ?? '',
            'posts' => $posts,
            'num' => $params['num'] ?? 0,
            'salary_up' => $params['salary_up'] ?? 0,
            'salary_down' => $params['salary_down'] ?? 0,
            'edu_ask' => $params['edu_ask'] ?? '',
            'sex_ask' => $params['sex_ask'] ?? '',
            'age_ask' => $params['age_ask'] ?? '',
            'base_salary' => $params['base_salary'] ?? 0,
            'hourly' => $params['hourly'] ?? 0,
            'payday' => $params['payday'] ?? '',
            'food_sub' => $params['food_sub'] ?? '',
            'put_up' => $params['put_up'] ?? '',
            'insure' => $params['insure'] ?? '',
            'remark' => $params['remark'] ?? '',
            'other_ask' => $params['other_ask'] ?? '',
            'tasks' => $params['tasks'] ?? '',
            'job_desc' => $params['job_desc'] ?? '',
            'id_card' => $params['id_card'] ?? '',
            'interview' => $params['interview'] ?? '',
            'physical' => $params['physical'] ?? '',
            'interview_date' => $params['interview_date'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? BoolEnum::NO,
            'is_recommend' => $params['is_recommend'] ?? BoolEnum::NO,
            'update_time' => time()
        ];

        $result = $this->recruit->update($data,$id);
        $this->log->writeOperateLog($request,'编辑招聘信息'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/recruit'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->recruit->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
