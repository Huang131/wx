<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
	//黑名单
    protected $hidden =[];

    public function scopeHelp($query)
    {
    	return $query->where('state',0);
    }

    public function scopeGY($query)
    {
    	return $query->where('state',1);
    }

    public function scopeShow($query)
    {
        return $query->where('activity_time','>',now());
    }
}
