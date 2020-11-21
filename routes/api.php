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

    Route::any('/token/get_token', 'TokenController@getToken');

    Route::group(['middleware' => ['api.auth']], function(){

    });
});


