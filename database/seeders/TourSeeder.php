<?php

namespace Database\Seeders;

use App\Models\Agency;
use Faker\Factory;
use App\Models\Tour;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class TourSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tour::factory()->count(50)->create();

        $faker = Factory::create();

        for ($index = 1; $index < 50; $index++)
        {
            $tour = Tour::find($index);

            $agencies = Agency::inRandomOrder()->take($faker->numberBetween($min = 1, $max = 3))->get();
            foreach ($agencies as $key => $agency)
            {
                $tour->agencies()->attach($agency);
                $tour->save();
            }
        }
    }
}
