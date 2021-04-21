<?php

namespace App\Http\Controllers\Api;

use App\Repositories\Api\UserRepository as UserServer;
use Illuminate\Http\Request;

class LabelController extends BaseController
{

    protected $userServer;
    protected $token;

    public function __construct(Request $request, UserServer $userServer)
    {
        parent::__construct();

        $this->userServer = $userServer;
        $this->token = $request->header('Token');

    }

    /**
     * 获取用户信息
     */
    public function getUser()
    {
        $user_info = $this->redis->get($this->token);

        return $this->ajaxSuccess($user_info,'OK');
    }

}




