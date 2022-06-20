<?php

namespace Database\Factories;

use App\Models\Region;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tour>
 */
class TourFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $regionId = Region::inRandomOrder()->first()->id;
        $maxPeoples = range(2, 9);
        $datenumber =  $this->faker->randomElement(range(1, 6)) * 30;

        $registrationStartDate = Carbon::createFromTimestamp(
            $this->faker->dateTimeBetween($startDate = '-1 months', $endDate = '+1 months', $timezone = 'Asia/Ho_Chi_Minh')->getTimeStamp()
        );
        $registrationEndDate= Carbon::createFromFormat('Y-m-d H:i:s', $registrationStartDate)->addDays($datenumber);

        $tourStartDate =  Carbon::createFromFormat('Y-m-d H:i:s', $registrationEndDate)->addDays(
            $this->faker->numberBetween(2, 8)
        );
        $tourEndDate= Carbon::createFromFormat('Y-m-d H:i:s', $tourStartDate)->addDays(
            $this->faker->numberBetween(2, 8)
        );

        $travel = ['lake', 'beach', 'nature', 'mountains', 'Landscape', 'outdoors', 'outdoor'];

        return [
            'name' => $this->faker->sentence(),
            'image' => 'https://source.unsplash.com/random/'.$this->faker->randomElement($travel),
            'description_file' => 'description_file.docx',
            'tour_start_date' => $tourStartDate,
            'tour_end_date' => $tourEndDate,
            'registration_start_date' => $registrationStartDate,
            'registration_end_date' => $registrationEndDate,
            'price' => $this->faker->numberBetween(500, 9999) * 1000,
            'max_people' => $this->faker->randomElement($maxPeoples) * 10,
            'region_id' => $regionId,
        ];
    }
}
