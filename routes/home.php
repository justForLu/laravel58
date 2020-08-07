<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect('/home/index');
});
Route::get('home', function () {
    return redirect('/home/index');
});


Route::group(['prefix' => 'home', 'namespace' => 'Home'], function (){

    Route::get('/login', 'LoginController@index');
//    Route::post('/login', 'LoginController@login');
//    Route::post('/register', 'LoginController@register');
    Route::get('/register', 'LoginController@register');
    Route::get('/logout', 'LoginController@logout');

    Route::get('/index', 'IndexController@index');
    Route::get('/recruit/list', 'RecruitController@index');
    Route::get('/recruit/detail', 'RecruitController@detail');
    Route::get('/shop/list', 'ShopController@index');
    Route::get('/shop/detail', 'ShopController@detail');
    Route::get('/news/index', 'NewsController@index');
    Route::get('/news/detail', 'NewsController@detail');
    Route::get('/user/message', 'UsersController@message');
    Route::get('/user/cash_out', 'UsersController@cash_out');
    Route::get('/user/info', 'UsersController@info');
    Route::get('/user/collect', 'UsersController@collect');
    Route::get('/user/portrait', 'UsersController@portrait');
    Route::get('/user/account', 'UsersController@account');

    Route::group(['middleware' => ['home.auth']], function(){


    });
});



