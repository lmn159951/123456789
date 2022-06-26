<?php

namespace Database\Seeders;

use Faker\Factory;
use App\Models\Tour;
use App\Models\User;
use App\Models\AgencyTour;
use Illuminate\Database\Seeder;
use App\Models\TourRegistration;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

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
    }
}
