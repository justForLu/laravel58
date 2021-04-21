<?php
namespace App\Http\Controllers\Home;

use App\Enums\BasicEnum;
use App\Repositories\Home\Criteria\JoinCriteria;
use App\Repositories\Home\JoinRepository as Join;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class JoinController extends BaseController
{

    protected $join;

    public function __construct(Join $join)
    {
        parent::__construct();

        $this->join = $join;

        view()->share('menu','Join');
    }


    /**
     * 门店列表页
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
	public function index(Request $request)
    {
        $params = $request->all();


        return view('home.join.index');
    }


    /**
     * 门店详情页
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function join_in(Request $request)
    {

        $params = $request->all();

        //如果验证码正确，则修改手机号
        $data = [
            'type' => $params['type'] ?? 0,
            'name' => $params['name'] ?? '',
            'mobile' => $params['mobile'] ?? '',
            'email' => $params['email'] ?? '',
            'years' => $params['years'] ?? 0,
            'create_time' => time(),
        ];

        $result = $this->join->create($data);

        return $this->ajaxAuto($result,'提交',url('/home/join/index.html'));
    }

}
