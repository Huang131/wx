<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $guarded=[];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
         'remember_token',
    ];


    //用户参加的活动
    public function join_activitys()
    {
        return $this->belongsToMany('App\Activity','user_activity','user_id','activity_id');
    }

    //用户创建的活动
    public function create_activitys()
    {
        return $this->hasMany('App\Activity','create_id','id');
    }


}
