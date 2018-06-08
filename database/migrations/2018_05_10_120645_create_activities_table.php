<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activities', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->comment('活动名称');
            $table->timestamp('activity_time')->comment('活动时间');
            $table->string('address')->comment('活动地点');
            $table->string('describe')->comment('活动描述');
            $table->string('phone')->comment('联系方式');
            $table->string('latitude')->comment('纬度');
            $table->string('longitude')->comment('经度');
            $table->integer('create_id')->comment('发布者');
            $table->tinyInteger('state')->comment('0:互助;1:公益');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('activities');
    }
}
