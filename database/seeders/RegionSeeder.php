<?php

namespace Database\Seeders;

use App\Models\Region;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $regions = [
            ['name' => 'Tây Bắc Bộ', 'created_at' => Carbon::now()],
            ['name' => 'Đông Bắc bộ', 'created_at' => Carbon::now()],
            ['name' => 'Đồng bằng sông Hồng', 'created_at' => Carbon::now()],
            ['name' => 'Bắc Trung Bộ', 'created_at' => Carbon::now()],
            ['name' => 'Nam Trung Bộ', 'created_at' => Carbon::now()],
            ['name' => 'Tây Nguyên', 'created_at' => Carbon::now()],
            ['name' => 'Đông Nam Bộ', 'created_at' => Carbon::now()],
            ['name' => 'Tây Nam Bộ', 'created_at' => Carbon::now()]
        ];

        Region::insert($regions);
    }
}
