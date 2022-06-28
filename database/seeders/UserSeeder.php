<?php

namespace Database\Seeders;

use App\Models\Agency;
use App\Models\Department;
use App\Models\Position;
use App\Models\User;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        $fullnames = collect(config('constants.fullnames'))->shuffle();

        User::insert([
            [
            'fullname' => 'Lê Ngọc Hở',
            'username' => 'ngocho123',
            'password' => Hash::make('1'),
            'email' => 'ngocho123@gmail.com',
            'email_verified_at' => now(),
            'gender' => 'Nam',
            'phone' => '0589124204',
            'citizen_card' => '312345678',
            'agency_id' => 9,
            'department_id' =>7,
            'position_id' => 3,
            'birthday' => $faker->dateTimeBetween($startDate = '-21 years', $endDate = '-21 years', $timezone = 'Asia/Ho_Chi_Minh'),
            'start_date' => date('Y-m-d', strtotime('13-06-2022')),
            'is_admin' => '1',
        ],
        [
            'fullname' => 'Bùi Thị Thùy Dương',
            'username' => 'thuyduong123',
            'password' => Hash::make('1'),
            'email' => 'thuyduong123@gmail.com',
            'email_verified_at' => now(),
            'gender' => 'Nữ',
            'phone' => '0589124205',
            'citizen_card' => '312345675',
            'agency_id' => 9,
            'department_id' =>7,
            'position_id' => 3,
            'birthday' => $faker->dateTimeBetween($startDate = '-21 years', $endDate = '-21 years', $timezone = 'Asia/Ho_Chi_Minh'),
            'start_date' => date('Y-m-d', strtotime('13-06-2022')),
            'is_admin' => '1',
        ],
        [
            'fullname' => 'Nguyễn Thị Bảo Trân',
            'username' => 'baotran123',
            'password' => Hash::make('1'),
            'email' => 'baotran123@gmail.com',
            'email_verified_at' => now(),
            'gender' => 'Nữ',
            'phone' => '0589124206',
            'citizen_card' => '312345676',
            'agency_id' => 9,
            'department_id' =>7,
            'position_id' => 3,
            'birthday' => $faker->dateTimeBetween($startDate = '-21 years', $endDate = '-21 years', $timezone = 'Asia/Ho_Chi_Minh'),
            'start_date' => date('Y-m-d', strtotime('13-06-2022')),
            'is_admin' => '1',
        ],
        [
            'fullname' => 'Lê Minh Nhật',
            'username' => 'minhnhat123',
            'password' => Hash::make('1'),
            'email' => 'minhnhat123@gmail.com',
            'email_verified_at' => now(),
            'gender' => 'Nam',
            'phone' => '0589124207',
            'citizen_card' => '312345677',
            'agency_id' => 9,
            'department_id' =>7,
            'position_id' => 3,
            'birthday' => $faker->dateTimeBetween($startDate = '-21 years', $endDate = '-21 years', $timezone = 'Asia/Ho_Chi_Minh'),
            'start_date' => date('Y-m-d', strtotime('13-06-2022')),
            'is_admin' => '1',
        ]
        ]);

        $users = [];
        foreach ($fullnames as $index => $fullname)
        {
            $agencyId = Agency::inRandomOrder()->first()->id;
            $departmentId = Department::inRandomOrder()->first()->id;

            $username = '';
            $username .= getName(convertName($fullname));
            $username .= paddingNumberLeadingZeros($agencyId);
            $username .= paddingNumberLeadingZeros($departmentId);
            $username .= paddingNumberLeadingZeros(
                User::where('agency_id', $agencyId)->where('department_id', $departmentId)->count() + 1
            , 3);

            User::create([
                'fullname' => $fullname,
                'username' => $username,
                'password' => Hash::make('1'),
                'remember_token' => null,
                'email' => $username."@gmail.com",
                'email_verified_at' => now(),
                'gender' => $faker->randomElement(['Nam', 'Nữ']),
                'phone' => $faker->numerify('0#########'),
                'birthday' => randomCarbonDatetime('01-01-1980', '01-01-2001'),
                'citizen_card' => $faker->numerify('3########'),
                'agency_id' => $agencyId,
                'department_id' => $departmentId,
                'position_id' => Position::inRandomOrder()->first()->id,
                'start_date' => randomCarbonDatetime('01-01-2015'),
                'is_admin' => '0',
            ]);
        }

        User::insert($users);
    }
}
