<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Enums\BoolEnum;
use App\Enums\LabelEnum;
use App\Http\Requests\Admin\FactoryRequest;
use App\Repositories\Admin\Criteria\FactoryCriteria;
use App\Repositories\Admin\FactoryRepository as Factory;
use App\Repositories\Admin\LabelRepository as Label;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class FactoryController extends BaseController
{
    /**
     * @var Factory
     */
    protected $factory;
    protected $label;
    protected $log;

    public function __construct(Factory $factory, Label $label, LogRepository $log)
    {
        parent::__construct();

        $this->factory = $factory;
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

        $this->factory->pushCriteria(new FactoryCriteria($params));

        $list = $this->factory->paginate(Config::get('admin.page_size',10));

        return view('admin.factory.index',compact('params','list'));
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

        return view('admin.factory.create', compact('label_arr'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param FactoryRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(FactoryRequest $request)
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
            'name' => $params['name'] ?? '',
            'image' => $image_path,
            'picture' => $params['picture'] ?? '',
            'scale' => $params['scale'] ?? '',
            'trade' => $params['trade'] ?? '',
            'avg_salary' => $params['avg_salary'] ?? 0,
            'phone' => $params['phone'] ?? '',
            'label' => $label,
            'province' => $params['province'] ?? 0,
            'city' => $params['city'] ?? 0,
            'area' => $params['area'] ?? 0,
            'address' => $params['address'] ?? '',
            'longitude' => $params['longitude'] ?? '',
            'latitude' => $params['latitude'] ?? '',
            'desc' => $params['desc'] ?? '',
            'bus_line' => $params['bus_line'] ?? '',
            'meet' => $params['meet'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? BoolEnum::NO,
            'is_recommend' => $params['is_recommend'] ?? BoolEnum::NO,
            'create_time' => time()
        ];

        $result = $this->factory->create($data);
        $this->log->writeOperateLog($request,'添加工厂');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/factory'));
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
        $data = $this->factory->find($id);
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
        $data->city = CityController::getCityArrString($data->area,'id');

        $data->picture_path = array_values(FileController::getFilePath($data->picture));

        return view('admin.factory.edit',compact('data','label_arr'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param FactoryRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(FactoryRequest $request, $id)
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
            'name' => $params['name'] ?? '',
            'image' => $image_path,
            'picture' => $params['picture'] ?? '',
            'scale' => $params['scale'] ?? '',
            'trade' => $params['trade'] ?? '',
            'avg_salary' => $params['avg_salary'] ?? 0,
            'phone' => $params['phone'] ?? '',
            'label' => $label,
            'province' => $params['province'] ?? 0,
            'city' => $params['city'] ?? 0,
            'area' => $params['area'] ?? 0,
            'address' => $params['address'] ?? '',
            'longitude' => $params['longitude'] ?? '',
            'latitude' => $params['latitude'] ?? '',
            'desc' => $params['desc'] ?? '',
            'bus_line' => $params['bus_line'] ?? '',
            'meet' => $params['meet'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? BoolEnum::NO,
            'is_recommend' => $params['is_recommend'] ?? BoolEnum::NO,
            'update_time' => time()
        ];

        $result = $this->factory->update($data,$id);
        $this->log->writeOperateLog($request,'编辑工厂'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/factory'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->factory->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
