<?php

namespace Database\Seeders;

use Faker\Factory;
use App\Models\Tour;
use App\Models\User;
use App\Models\AgencyTour;
use App\Models\Support;
use Illuminate\Database\Seeder;
use App\Models\TourRegistration;
use App\Models\UserSupport;
use Illuminate\Support\Carbon;

class TourRegistrationSeeder extends Seeder
{
    public function run()
    {
        $faker = Factory::create();

        TourRegistration::query()->truncate();

        $tours = Tour::with('agencies')->whereYear('registration_start_date', '>=', 2018)->orderBy('registration_start_date', 'DESC')->get();

        foreach ($tours as $tourIndex => $tour)
        {
            $agencies = $tour->agencies()->get();

            foreach ($agencies as $agencyIndex => $agency)
            {
                $users = User::where('agency_id', $agency->id)->get();

                foreach ($users as $userIndex => $user)
                {
                    $isTourRegistration = rand(0, 1);

                    if ($isTourRegistration === 1)
                    {
                        $registrationStartDate = Carbon::parse($tour->registration_start_date);
                        $registrationEndDate = Carbon::parse($tour->registration_start_date);
                        $startDate = Carbon::parse($user->start_date);

                        $registrationDate = randomCarbonDatetime($registrationStartDate->format('d-m-Y'), $registrationEndDate->format('d-m-Y'));

                        $seniority = $startDate->diffInYears($registrationDate);

                        $support = Support::where('start_year', '<=', $registrationDate->year)->where('end_year', '>=', $registrationDate->year)->get();

                        $cost = $tour->price;

                        foreach ($support as $key => $supportDetail)
                        {
                            $minCondition = $supportDetail['min_condition'] ?? 0;
                            $maxCondition = $supportDetail['max_condition'] ?? 100;

                            if ($seniority >= $minCondition && $seniority < $maxCondition)
                            {
                                $isUserSupported = false;
                                $userSupportIds = TourRegistration::where(['user_id' => $user->id])->pluck('support_id')->toArray();
                                foreach ($userSupportIds as $key => $userSupportId)
                                {
                                    if (in_array($userSupportId, $support->pluck('id')->toArray()))
                                    {
                                        $isUserSupported = true;
                                        break;
                                    }
                                }

                                if ($isUserSupported) break;

                                $cost = $tour->price - intval($supportDetail->price);
                                $supportId = $supportDetail->support_id;
                                break;
                            }
                        }

                        TourRegistration::create([
                            'user_id' => $user->id,
                            'tour_id' => $tour->id,
                            'support_id' => empty($supportId) ? null : $supportId,
                            'registration_date' => $registrationDate,
                            'relative_fullname' => $user->fullname,
                            'birthday' => $user->birthday,
                            'gender' => $user->gender,
                            'relationship' => 'USER',
                            'phone' => $user->phone,
                            'citizen_card' => $user->citizen_card,
                            'cost' => $cost,
                        ]);

                        $numberOfRelatives = rand(0, 2);
                        for ($index = 0; $index < $numberOfRelatives; $index++)
                        {
                            TourRegistration::create([
                                'user_id' => $user->id,
                                'tour_id' => $tour->id,
                                'registration_date' => $registrationDate,
                                'relative_fullname' => $faker->name,
                                'birthday' => randomCarbonDatetime('01-01-1980', '01-01-2001'),
                                'gender' => $faker->randomElement(['Nam', 'Nữ']),
                                'relationship' => 'RELATIONSHIP',
                                'phone' => $faker->numerify('0#########'),
                                'citizen_card' => $faker->numerify('3########'),
                                'cost' => $tour->price,
                            ]);
                        }
                    }
                }
            }

        }

    }
}
