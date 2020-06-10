<?php

/** @var Factory $factory */

use App\Entry;
use Faker\Generator as Faker;
use Illuminate\Database\Eloquent\Factory;

$factory->define(Entry::class, function (Faker $faker) {
    return [
            'title'   => $faker->sentence(),
            'description' => $faker->paragraphs( 2 , true ),
    ];
});
