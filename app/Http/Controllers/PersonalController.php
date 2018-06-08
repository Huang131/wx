<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class PersonalController extends Controller
{
    public function index(User $user)
    {
 
            // dd($user);

        $create_num=$user->create_activitys->count();

    	$join_num=$user->join_activitys->count();

		 return response()->json([
		 	'create_num'=>$create_num,
		 	'join_num'=>$join_num,
		 	'state'=>200,
		 	]);

    }


    public function publish(User $user)
    {

    	$data=$user->create_activitys()->get();

    	return response()->json([
    		'data'=>$data,
    		'state'=>200,
    		]);
    }

    public function join(User $user)
    {

    	$data=$user->join_activitys()->get();

    	return response()->json([
    		'data'=>$data,
    		'state'=>200,
    		]);

    }



}
