<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Enums\BoolEnum;
use App\Enums\LabelEnum;
use App\Http\Requests\Admin\RecruitRequest;
use App\Repositories\Admin\Criteria\RecruitCriteria;
use App\Repositories\Admin\RecruitRepository as Recruit;
use App\Repositories\Admin\LabelRepository as Label;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class RecruitController extends BaseController
{
    /**
     * @var Recruit
     */
    protected $recruit;
    protected $label;
    protected $log;

    public function __construct(Recruit $recruit, Label $label, LogRepository $log)
    {
        parent::__construct();

        $this->recruit = $recruit;
        $this->label = $label;
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
        //获取标签列表
        $label_arr = $this->label->getList(LabelEnum::WELFARE);


        return view('admin.recruit.create', compact('label_arr'));
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
        //处理封面图片链接地址，存储封面图片链接
        $image_path = array_values(FileController::getFilePath($params['image']));
        $image_path = $image_path[0] ?? '';
        //福利标签
        if($params['label']){
            $label = implode(',',$params['label']);
        }else{
            $label = '';
        }

        $data = [
            'shop_id' => 0, //TODO
            'type' => $params['type'] ?? 0,
            'title' => $params['title'] ?? '',
            'posts' => $params['posts'] ?? '',
            'num' => $params['num'] ?? 0,
            'image' => $image_path,
            'picture' => $params['picture'] ?? 0,
            'salary_up' => $params['salary_up'] ?? 0,
            'salary_down' => $params['salary_down'] ?? 0,
            'label' => $label,
            'edu_ask' => $params['edu_ask'] ?? '',
            'sex_ask' => $params['sex_ask'] ?? '',
            'age_ask' => $params['age_ask'] ?? '',
            'address' => $params['address'] ?? '',
            'longitude' => $params['longitude'] ?? '',
            'latitude' => $params['latitude'] ?? '',
            'mobile' => $params['mobile'] ?? '',
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
            'business' => $params['business'] ?? '',
            'scale' => $params['scale'] ?? '',
            'trade' => $params['trade'] ?? '',
            'avg_salary' => $params['avg_salary'] ?? 0,
            'business_desc' => $params['business_desc'] ?? '',
            'business_add' => $params['business_add'] ?? '',
            'bus_line' => $params['bus_line'] ?? '',
            'meet' => $params['meet'] ?? '',
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
        $labels = $data->label ?? '';
        $labels = explode(',',$labels);
        //获取标签列表
        $label_arr = $this->label->getList(LabelEnum::WELFARE);
        if($label_arr){
            foreach ($label_arr as &$v){
                if(in_array($v['id'],$labels)){
                    $v['checked'] = 1;
                }else{
                    $v['checked'] = 0;
                }
            }
        }

        $data->picture_path = array_values(FileController::getFilePath($data->picture));

        return view('admin.recruit.edit',compact('data','label_arr'));
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
        //处理封面链接地址，存储封面链接
        if(strlen($params['image']) > 20){
            $image_path = $params['image'];
        }else{
            $image_path = array_values(FileController::getFilePath($params['image']));
            $image_path = $image_path[0] ?? '';
        }
        //福利标签
        if(isset($params['label']) && $params['label']){
            $label = implode(',',$params['label']);
        }else{
            $label = '';
        }

        $data = [
            'shop_id' => 0, //TODO
            'type' => $params['type'] ?? 0,
            'title' => $params['title'] ?? '',
            'posts' => $params['posts'] ?? '',
            'num' => $params['num'] ?? 0,
            'image' => $image_path,
            'picture' => $params['picture'] ?? 0,
            'salary_up' => $params['salary_up'] ?? 0,
            'salary_down' => $params['salary_down'] ?? 0,
            'label' => $label,
            'edu_ask' => $params['edu_ask'] ?? '',
            'sex_ask' => $params['sex_ask'] ?? '',
            'age_ask' => $params['age_ask'] ?? '',
            'address' => $params['address'] ?? '',
            'longitude' => $params['longitude'] ?? '',
            'latitude' => $params['latitude'] ?? '',
            'mobile' => $params['mobile'] ?? '',
            'base_salary' => $params['base_salary'] ?? '',
            'hourly' => $params['hourly'] ?? '',
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
            'business' => $params['business'] ?? '',
            'scale' => $params['scale'] ?? '',
            'trade' => $params['trade'] ?? '',
            'avg_salary' => $params['avg_salary'] ?? 0,
            'business_desc' => $params['business_desc'] ?? '',
            'business_add' => $params['business_add'] ?? '',
            'bus_line' => $params['bus_line'] ?? '',
            'meet' => $params['meet'] ?? '',
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
