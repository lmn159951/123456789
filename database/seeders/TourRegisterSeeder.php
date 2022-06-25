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
        $toYear = 2015; $fromYear = date('Y');

        for ($year = $toYear; $year <= $fromYear; $year++)
        {
            $registrationUsers = User::inRandomOrder()->with('agency')->get();

            foreach ($registrationUsers as $key => $registrationUser)
            {
                $agency = $registrationUser->agency;



                $tours = Tour::whereRaw('YEAR(registration_start_date) <= ? AND YEAR(registration_end_date) . >= ?', [$toYear, $toYear])->get();

                // $agencicyTours = AgencyTour::whereIn('tour_id', $toursQuery->pluck('id'))->where('agency_id', $agency->agency_id)->count();

                print_r($tours);

                // TourRegistration::create([
                //     'user_id' => 1,
                //     'tour_id' => 1,
                //     'registration_date' => 1,
                //     'relative_fullname' => 1,
                //     'birthday' => 1,
                //     'gender' => 1,
                //     'relationship' => 1,
                //     'phone' => 1,
                //     'citizen_card' => 1,
                //     'cost' => 1
                // ]);

                // $numberOfRelative = rand(0, 3);
                // for ($i = 0; $i < $numberOfRelative; $i++)
                // {
                //     TourRegistration::create([
                //         'user_id' => 1,
                //         'tour_id' => 1,
                //         'registration_date' => 1,
                //         'relative_fullname' => 1,
                //         'birthday' => 1,
                //         'gender' => 1,
                //         'relationship' => 1,
                //         'phone' => 1,
                //         'citizen_card' => 1,
                //         'cost' => 1
                //     ]);
                // }

            }


        }


    }
}
