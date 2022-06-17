<?php

namespace Database\Factories;

use App\Models\Agency;
use App\Models\Department;
use App\Models\Position;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $agencyId = Agency::inRandomOrder()->first()->id;
        $departmentId = Department::inRandomOrder()->first()->id;
        $fullname = $this->faker->name;

        $username = '';
        $username .= getFullName(convertName($fullname));
        $username .= paddingNumberLeadingZeros($agencyId);
        $username .= paddingNumberLeadingZeros($departmentId);

        return [
            'fullname' => $fullname,
            'username' => $username,
            'password' => Hash::make('1'),
            'remember_token' => Str::random(10),
            'email' => $username."@gmail.com",
            'email_verified_at' => now(),
            'gender' => $this->faker->randomElement(['Nam', 'Nữ']),
            'phone' => $this->faker->numerify('0#########'),
            'citizen_card' => $this->faker->numerify('3########'),
            'agency_id' => $agencyId,
            'department_id' => $departmentId,
            'position_id' => Position::inRandomOrder()->first()->id,
            'start_date' => $this->faker->dateTimeBetween($startDate = '-20 years', $endDate = 'now', $timezone = 'Asia/Ho_Chi_Minh'),
            'is_admin' => '0',
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return static
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
