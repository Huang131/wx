<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Iwanli\Wxxcx\Wxxcx;
use App\User;


class WxxcxController extends Controller
{
    protected $wxxcx;

    function __construct(Wxxcx $wxxcx)
    {
    	$this->wxxcx=$wxxcx;
    }

    //小程序登录用户信息
    public function getWxUserInfo()
    {
    	//code在小程序端使用wx.login获取
        $code = request('code', '');
        $encryptedData = request('encryptedData', '');
        $iv = request('iv', '');

        //根据 code 获取用户 session_key 等信息, 返回用户openid 和 session_key
        $userInfo = $this->wxxcx->getLoginInfo($code);

         //获取解密后的用户信息
        return $this->wxxcx->getUserInfo($encryptedData, $iv);

    }

    public function login()
    { 


    	$userInfo=json_decode($this->getWxUserInfo());
        

    	$user=User::where('openid',$userInfo->openId)->first();

    	if (empty($user)) {//注册用户
    		 
    		 $insert = [
                'openid' =>$userInfo->openId,
                'nickname' =>$userInfo->nickName,
                'logo' =>$userInfo->avatarUrl,
                'gender' =>$userInfo->gender == 0 ? '女':($userInfo->gender == 1? '男' : '未知'),
            ];

    	 $user=User::create($insert);


    	}else{
            $user->logo = $userInfo->avatarUrl;
            $user->gender = $userInfo->gender == 0 ? '女' : ($userInfo->gender  == 1 ? '男' : '未知');
            $user->nickname = $userInfo->nickName;		
    	}


    	$user->save();
        
        auth()->login($user);

        return  response()->json([
        'msg'=>$userInfo,
        'state'=>200,
        ]);

    }





}
