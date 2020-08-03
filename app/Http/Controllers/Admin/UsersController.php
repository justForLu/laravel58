<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Http\Requests\Admin\UsersRequest;
use App\Repositories\Admin\Criteria\UsersCriteria;
use App\Repositories\Admin\UsersRepository as Users;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class UsersController extends BaseController
{
    /**
     * @var Users
     */
    protected $users;
    protected $log;

    public function __construct(Users $users, LogRepository $log)
    {
        parent::__construct();

        $this->users = $users;
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

        $this->users->pushCriteria(new UsersCriteria($params));

        $list = $this->users->paginate(Config::get('admin.page_size',10));

        if($list){
            //处理省市数据
            $add_list = json_decode(json_encode($list), true);
            $province = array_unique(array_column($add_list['data'],'province'));
            $city = array_unique(array_column($add_list['data'],'city'));
            $area = array_unique(array_column($add_list['data'],'area'));
            $add_arr = array_merge($province,$city,$area);

            foreach ($list as &$v){

                $v->login_time = date('Y-m-d H:i:s', $v->login_time);
            }
        }

        return view('admin.users.index',compact('params','list'));
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
     * @param UsersRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(UsersRequest $request)
    {
        //
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UsersRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UsersRequest $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->users->delete($id);

        return $this->ajaxAuto($result,'删除');
    }

    /**
     * 修改用户状态
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function updateStatus(Request $request)
    {
        $params = $request->all();
        $id = $params['id'] ?? 0;
        $status = $params['status'] ?? BasicEnum::ACTIVE;

        $data = [
            'status' => $status
        ];

        $result = $this->users->update($data,$id);
        $this->log->writeOperateLog($request,'更改用户状态'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/users'));
    }

}
