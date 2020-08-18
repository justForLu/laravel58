<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Http\Requests\Admin\JoinRequest;
use App\Repositories\Admin\Criteria\JoinCriteria;
use App\Repositories\Admin\JoinRepository as Join;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class JoinController extends BaseController
{
    /**
     * @var Join
     */
    protected $join;
    protected $log;

    public function __construct(Join $join, LogRepository $log)
    {
        parent::__construct();

        $this->join = $join;
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

        $this->join->pushCriteria(new JoinCriteria($params));

        $list = $this->join->paginate(Config::get('admin.page_size',10));


        return view('admin.join.index',compact('params','list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param JoinRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(JoinRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
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
        $data = $this->join->find($id);

        return view('admin.join.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param JoinRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(JoinRequest $request, $id)
    {
        $params = $request->filterAll();

        $data = [
            'name' => $params['name'] ?? '',
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

        $result = $this->join->update($data,$id);
        $this->log->writeOperateLog($request,'编辑门店'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/join'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->join->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

}
