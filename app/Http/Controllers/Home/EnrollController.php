<?php
namespace App\Http\Controllers\Home;

use App\Enums\EnrollEnum;
use App\Repositories\Home\EnrollRepository as Enroll;
use Illuminate\Http\Request;

class EnrollController extends BaseController
{

    protected $enroll;

    public function __construct(Enroll $enroll)
    {
        parent::__construct();

        $this->enroll = $enroll;
    }


    /**
     * 报名
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function sign_up(Request $request)
    {
        $params = $request->all();

        $data = [
            'type' => $params['type'] ?? 1,
            'factory_id' => $params['factory_id'] ?? 0,
            'recruit_id' => $params['recruit_id'] ?? 0,
            'user_id' => $params['user_id'] ?? 0,
            'name' => $params['name'] ?? '',
            'mobile' => $params['mobile'] ?? '',
            'shop_id' => $params['shop_id'] ?? 0,
            'status' => EnrollEnum::UNDEAL,
            'create_time' => time()
        ];

        $result = $this->enroll->create($data);

        return $this->ajaxAuto($result, '报名');
    }

}
