<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use App\Http\Controllers\Admin\BaseController;

class ApiAuthenticate
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        // 检查用户登录状态
        $redis = app('redis.connection');
        $token = $request->header('Token');
        $userInfo = $redis->get($token);
        if(empty($userInfo)){
            $back_url = env('H5_URL');

            header('Location: '.$back_url);
        }

        return $next($request);
    }

}
