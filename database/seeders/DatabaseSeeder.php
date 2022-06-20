<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            AgencySeeder::class,
            DepartmentSeeder::class,
            PositionSeeder::class,
            RegionSeeder::class,
            UserSeeder::class,
            TourSeeder::class,
            SupportSeeder::class
        ]);
    }
}
