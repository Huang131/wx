<?php

use Faker\Generator as Faker;

$factory->define(App\Activity::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'activity_time'=> $faker->date($format = 'Y-m-d', $max = 'now'),
        'address'=>$faker->sentence(),
        'address'=>$faker->sentence(),
        'describe'=>$faker->sentence(),
         'create_id'=>'2',
         'state'=>'1',
        'phone'=>$faker->phoneNumber(),
        'latitude'=>'29',
        'longitude'=>'113'     
    ];
});
