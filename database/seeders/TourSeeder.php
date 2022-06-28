<?php

namespace Database\Seeders;

use App\Models\Agency;
use App\Models\Region;
use Faker\Factory;
use App\Models\Tour;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Carbon;

class TourSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();

        $initialDate = createCarbonDatetime('01-01-2018');

        $travel = ['lake', 'beach', 'nature', 'mountains', 'Landscape', 'outdoors', 'outdoor'];

        for ($startDate = $initialDate; $startDate->lte(createCarbonDatetime('31-12-2022')); $startDate->addDays(rand(4, 5) * 30))
        {
            $numberOfTours = rand(1, 3);
            $registrationBetweenDate = rand(1, 2) * 30;

            for ($i = 0; $i < $numberOfTours; $i++)
            {
                $registrationStartDate = $startDate;
                $registrationEndDate = Carbon::createFromFormat('Y-m-d H:i:s', $registrationStartDate)->addDays($registrationBetweenDate);
                $tourStartDate =  Carbon::createFromFormat('Y-m-d H:i:s', $registrationEndDate)->addDays(rand(1, 8));
                $tourEndDate= Carbon::createFromFormat('Y-m-d H:i:s', $tourStartDate)->addDays(rand(1, 8));
                $regionId = Region::inRandomOrder()->first()->id;

                $createdTour = Tour::create([
                    'name' => $faker->sentence(),
                    'image' => 'https://source.unsplash.com/random/'.$faker->randomElement($travel),
                    'description_file' => 'description_file.docx',
                    'registration_start_date' => $registrationStartDate,
                    'registration_end_date' => $registrationEndDate,
                    'tour_start_date' => $tourStartDate,
                    'tour_end_date' => $tourEndDate,
                    'price' => rand(500, 9999) * 1000,
                    'max_people' => rand(2, 8) * 10,
                    'region_id' => $regionId,
                ]);

                $randomAgencies = Agency::inRandomOrder()->limit(rand(1, 3))->get();
                $createdTour->agencies()->attach($randomAgencies);
                $createdTour->save();
            }
        }
    }
}
