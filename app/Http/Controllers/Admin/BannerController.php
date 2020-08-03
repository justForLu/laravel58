<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Http\Requests\Admin\BannerRequest;
use App\Repositories\Admin\Criteria\BannerCriteria;
use App\Repositories\Admin\BannerRepository as Banner;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class BannerController extends BaseController
{
    /**
     * @var Banner
     */
    protected $banner;
    protected $log;

    public function __construct(Banner $banner, LogRepository $log)
    {
        parent::__construct();

        $this->banner = $banner;
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

        $this->banner->pushCriteria(new BannerCriteria($params));

        $list = $this->banner->paginate(Config::get('admin.page_size',10));

        return view('admin.banner.index',compact('params','list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.banner.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param BannerRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(BannerRequest $request)
    {
        $params = $request->all();
        //处理幻灯片链接地址，存储幻灯片链接
        $image_path = array_values(FileController::getFilePath($params['image']));
        $image_path = $image_path[0] ?? '';

        $data = [
            'title' => $params['title'] ?? '',
            'image' => $image_path,
            'type' => $params['type'] ?? 0,
            'link' => $params['link'] ?? 0,
            'alt' => $params['alt'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'create_time' => time()
        ];

        $result = $this->banner->create($data);
        $this->log->writeOperateLog($request,'添加幻灯片');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/banner'));
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
        $data = $this->banner->find($id);

        return view('admin.banner.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param BannerRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(BannerRequest $request, $id)
    {
        $params = $request->filterAll();
        //处理幻灯片链接地址，存储幻灯片链接
        if(strlen($params['image']) > 20){
            $image_path = $params['image'];
        }else{
            $image_path = array_values(FileController::getFilePath($params['image']));
            $image_path = $image_path[0] ?? '';
        }

        $data = [
            'title' => $params['title'] ?? 0,
            'image' => $image_path,
            'type' => $params['type'] ?? 0,
            'link' => $params['link'] ?? 0,
            'alt' => $params['alt'] ?? '',
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'update_time' => time()
        ];

        $result = $this->banner->update($data,$id);
        $this->log->writeOperateLog($request,'编辑幻灯片'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/banner'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->banner->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
