<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory;

class TourRegisterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        $toYear = 2015; $fromYear = date('Y');

        for ($year = $toYear; $year <= $fromYear; $year++)
        {
            $registrationUsers = User::inRandomOrder()->with('agency')->get();

            

        }


    }
}
