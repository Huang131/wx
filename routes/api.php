<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/wx/login','WxxcxController@login');


Route::get('/activities/help','ActivityController@help');//返回互助活动数据
Route::get('/activities/commonweal','ActivityController@commonweal');//返回公益活动数据

Route::post('/activities/create','ActivityController@create'); //发布活动

Route::get('/information/{user}','PersonalController@index'); 

Route::get('/information/publish/{user}','PersonalController@publish'); //个人发布的
Route::get('/information/join/{user}','PersonalController@join');  //个人参与的

Route::get('home','ActivityController@show');//首页事件展示


