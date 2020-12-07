<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use App\Services\Wechat\ServerService as Server;
use App\Repositories\Api\UserRepository as User;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redis;

class IndexController extends BaseController
{

    protected $server;
    protected $user;

    public function __construct(User $user, Server $server)
    {
        parent::__construct();

        $this->server = $server;
        $this->user = $user;

    }

    /**
     * 获取微信用户信息——发起授权
     * @param Request $request
     */
    public function oauth(Request $request)
    {
        $params = $request->all();
        $request_url = isset($params['request_url']) ? $params['request_url'] : '';
        $url = env('APP_URL').'/api/index/oauth_callback?param='.urlencode(($request_url));

        $this->server->getOauth($url);

        die();
    }

    /**
     * 获取微信用户信息——发起授权回调
     * @param Request $request
     * @throws \ReflectionException
     */
    public function oauthCallback(Request $request)
    {
        $user = $this->server->oauthCallback();
        $params = $request->all();
        $back_url = isset($params['param']) ? urldecode($params['param']) : '';
        $back_url = env('H5_URL').'/'.$back_url;
        if($user){
            $result = $this->user->wechatLogin($user);
            Log::info($result);
            if(isset($result['token']) && $result['token']){
                header('Location: '.$back_url.'?token='.$result['token']);
                die();
            }
        }
        header('Location: '.$back_url);
        die();
    }

    public function getUser()
    {
        $user = $this->server->getUser();

        return $this->ajaxSuccess($user,'OK');
    }

    /**
     * 获取菜单
     */
    public function createMenu()
    {
        $list = $this->server->createMenu();

        return $this->ajaxSuccess($list);
    }

    /**
     * 获取菜单
     */
    public function getMenu()
    {
        $list = $this->server->getMenuList();

        return $this->ajaxSuccess($list);
    }

    /**
     * 获取access_token
     */
    public function getToken()
    {
        $token = $this->server->getAccessToken();

        return $this->ajaxSuccess($token);
    }

}




