<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Http\Requests\Admin\PositionRequest;
use App\Repositories\Admin\Criteria\PositionCriteria;
use App\Repositories\Admin\PositionRepository as Position;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class PositionController extends BaseController
{
    /**
     * @var Position
     */
    protected $position;
    protected $log;

    public function __construct(Position $position, LogRepository $log)
    {
        parent::__construct();

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

        $this->position->pushCriteria(new PositionCriteria($params));

        $list = $this->position->paginate(Config::get('admin.page_size',10));


        return view('admin.position.index',compact('params','list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.position.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param PositionRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(PositionRequest $request)
    {
        $params = $request->all();

        $data = [
            'name' => $params['name'] ?? '',
            'type' => $params['type'] ?? 0,
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'create_time' => time()
        ];

        $result = $this->position->create($data);
        $this->log->writeOperateLog($request,'添加职位');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/position'));
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
        $data = $this->position->find($id);

        return view('admin.position.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param PositionRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(PositionRequest $request, $id)
    {
        $params = $request->filterAll();

        $data = [
            'name' => $params['name'] ?? '',
            'type' => $params['type'] ?? 0,
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'update_time' => time()
        ];

        $result = $this->position->update($data,$id);
        $this->log->writeOperateLog($request,'编辑职位'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/position'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->position->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
