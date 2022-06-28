<?php

namespace Database\Seeders;

use App\Models\Support;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SupportSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        $startYear = 2015;
        $supportCount = 0;

        while($startYear <= 2023)
        {
            $conditions = [];
            $numberConditions = $faker->numberBetween(1, 3);
            for ($k = 0; $k < $numberConditions; $k++)
            {
                if ($numberConditions === 1)
                {
                    $conditions[] = [$faker->numberBetween(1, 3), 0];
                    break;
                }
                if ($k === 0)
                {
                    $conditions[] = [0, $faker->numberBetween(1, 2)];
                }
                elseif ($k === $numberConditions - 1)
                {
                    $previousMaxCondition = $conditions[$k - 1][1] ?? 0;
                    $conditions[] = [$previousMaxCondition, 0];
                }
                else
                {
                    $previousCondition = $conditions[$k - 1][1] ?? 0;
                    $conditions[] = [$previousCondition, $previousCondition + $faker->numberBetween(1, 2)];
                }
            }

            $numberYear = $faker->numberBetween(1, 3);
            $initialPrice = 0;
            foreach ($conditions as $key => $condition)
            {
                $support = [];
                $support['start_year'] = $startYear;
                $support['end_year'] = $startYear + $numberYear;
                if ($condition[0] !== 0)
                {
                    $support['min_condition'] = $condition[0];
                }
                if ($condition[1] !== 0)
                {
                    $support['max_condition'] = $condition[1];
                }
                $initialPrice += $faker->numberBetween(1000, 2000) * 1000;
                $support['price'] = $initialPrice;
                $support['support_id'] = $supportCount + 1;
                Support::create($support);
            }
            $startYear = $support['end_year'] + 1;
            $supportCount++;
        }
    }
}
