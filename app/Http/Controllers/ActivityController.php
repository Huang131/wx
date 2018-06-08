<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Activity;

class ActivityController extends Controller
{
    
    //返回互助平台信息
	public function help()
	{

		 $data=Activity::Help()->get();

		 return response()->json([
		 	'data'=>$data,
		 	'state'=>200,
		 	]);
	}

	//返回公益平台信息
	public function commonweal()
	{
	     $data=Activity::GY()->get();

	   	 return response()->json([
		 	'data'=>$data,
		 	'state'=>200,
		 	]);
	}

 	public function create(User $user)
 	{
 		
 		$activity=Activity::create([
 			'create_id'=>auth()->id(),
 			'name'=>request('name'),
 			'activity_time'=>request('activity_time'),
 			'address'=>request('address'),
 			'describe'=>request('describe'),
 			'phone'=>request('phone'),
 			'latitude'=>request('latitude'),
 			'longitude'=>request('longitude'),
 			'state'=>request('state'),
 			]);

 		  return response()->json([
		 	'state'=>200,
		 	]);
 	
 	}


 	public function show()
 	{

 		$data=Activity::Show()->get(['latitude','longitude','state']);

 	     return response()->json([
		 	'data'=>$data,
		 	'state'=>200,
		 	]);

 	}



}
