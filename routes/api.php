<?php
header('access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:Content-Type,Access-Token,Access-Control-Allow-Origin');
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('home', function () {
    return redirect('/home/index');
});

Route::group(['prefix' => 'api', 'namespace' => 'Api'], function (){

    Route::any('/index/oauth', 'IndexController@oauth');
    Route::any('/index/get_user', 'IndexController@getUser');
    Route::any('/index/job', 'IndexController@job');
    Route::any('/index/oauth_callback/{new_url}', 'IndexController@oauthCallback');
    Route::any('/index/create_menu', 'IndexController@createMenu');
    Route::any('/index/test', 'IndexController@test');
    Route::any('/index/get_menu_list', 'IndexController@getMenu');
    Route::any('/index/get_token', 'IndexController@getToken');

    Route::any('/token/get_token', 'TokenController@getToken');
    Route::any('/token/test', 'TokenController@test');

    Route::any('/test/test', 'TestController@test');
    Route::any('/test/set_redis', 'TestController@setRedis');
    Route::any('/test/get_redis', 'TestController@getRedis');

    Route::group(['middleware' => ['api.auth']], function(){
        Route::get('/user/get_user', 'UserController@getUser');
    });
});


