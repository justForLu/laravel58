<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Http\Requests\Admin\LabelRequest;
use App\Repositories\Admin\Criteria\LabelCriteria;
use App\Repositories\Admin\LabelRepository as Label;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class LabelController extends BaseController
{
    /**
     * @var Label
     */
    protected $label;
    protected $log;

    public function __construct(Label $label, LogRepository $log)
    {
        parent::__construct();

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

        $this->label->pushCriteria(new LabelCriteria($params));

        $list = $this->label->paginate(Config::get('admin.page_size',10));

        return view('admin.label.index',compact('params','list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.label.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param LabelRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(LabelRequest $request)
    {
        $params = $request->all();

        $data = [
            'name' => $params['name'] ?? '',
            'type' => $params['type'] ?? 0,
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'create_time' => time()
        ];

        $result = $this->label->create($data);
        $this->log->writeOperateLog($request,'添加标签');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/label'));
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
        $data = $this->label->find($id);

        return view('admin.label.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param LabelRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(LabelRequest $request, $id)
    {
        $params = $request->filterAll();

        $data = [
            'name' => $params['name'] ?? '',
            'type' => $params['type'] ?? 0,
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'update_time' => time()
        ];

        $result = $this->label->update($data,$id);
        $this->log->writeOperateLog($request,'编辑标签'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/label'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->label->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
