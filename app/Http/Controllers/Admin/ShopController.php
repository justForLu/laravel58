<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Http\Requests\Admin\ShopRequest;
use App\Repositories\Admin\Criteria\ShopCriteria;
use App\Repositories\Admin\ShopRepository as Shop;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class ShopController extends BaseController
{
    /**
     * @var Shop
     */
    protected $shop;
    protected $log;

    public function __construct(Shop $shop, LogRepository $log)
    {
        parent::__construct();

        $this->shop = $shop;
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

        $this->shop->pushCriteria(new ShopCriteria($params));

        $list = $this->shop->paginate(Config::get('admin.page_size',10));


        return view('admin.shop.index',compact('params','list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.shop.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ShopRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(ShopRequest $request)
    {
        $params = $request->all();
        //处理封面图片链接地址，存储封面图片链接
        $image_path = array_values(FileController::getFilePath($params['image']));
        $image_path = $image_path[0] ?? '';

        $data = [
            'name' => $params['name'] ?? '',
            'image' => $image_path,
            'picture' => $params['picture'] ?? '',
            'job' => $params['job'] ?? '',
            'num' => $params['num'] ?? 0,
            'purpose' => $params['purpose'] ?? '',
            'province' => $params['province'] ?? 0,
            'city' => $params['city'] ?? 0,
            'area' => $params['area'] ?? 0,
            'address' => $params['address'] ?? 0,
            'longitude' => $params['longitude'] ?? '',
            'latitude' => $params['latitude'] ?? '',
            'phone' => $params['phone'] ?? '',
            'mobile' => $params['mobile'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? 0,
            'is_recommend' => $params['is_recommend'] ?? 0,
            'create_time' => time()
        ];

        $result = $this->shop->create($data);
        $this->log->writeOperateLog($request,'添加门店');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/shop'));
    }

    /**
     * Display the specified resource.
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($id)
    {
        return view('admin.shop.show');
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
        $data = $this->shop->find($id);
        $data->picture_path = array_values(FileController::getFilePath($data->picture));
        $data->city = CityController::getCityArrString($data->area,'id');

        return view('admin.shop.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param ShopRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(ShopRequest $request, $id)
    {
        $params = $request->filterAll();
        //处理封面链接地址，存储封面链接
        if(strlen($params['image']) > 20){
            $image_path = $params['image'];
        }else{
            $image_path = array_values(FileController::getFilePath($params['image']));
            $image_path = $image_path[0] ?? '';
        }

        $data = [
            'name' => $params['name'] ?? '',
            'image' => $image_path,
            'picture' => $params['picture'] ?? '',
            'job' => $params['job'] ?? '',
            'num' => $params['num'] ?? 0,
            'purpose' => $params['purpose'] ?? '',
            'province' => $params['province'] ?? 0,
            'city' => $params['city'] ?? 0,
            'area' => $params['area'] ?? 0,
            'address' => $params['address'] ?? 0,
            'longitude' => $params['longitude'] ?? '',
            'latitude' => $params['latitude'] ?? '',
            'phone' => $params['phone'] ?? '',
            'mobile' => $params['mobile'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? 0,
            'is_recommend' => $params['is_recommend'] ?? 0,
            'update_time' => time()
        ];

        $result = $this->shop->update($data,$id);
        $this->log->writeOperateLog($request,'编辑门店'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/shop'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->shop->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
