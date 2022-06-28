<?php

namespace Database\Seeders;

use App\Models\Department;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $departments = [
            ['name' => 'Phòng kế toán', 'created_at' => now()],
            ['name' => 'Phòng tài chính', 'created_at' => now()],
            ['name' => 'Phòng hành chính', 'created_at' => now()],
            ['name' => 'Phòng nhân sự', 'created_at' => now()],
            ['name' => 'Phòng kinh doanh', 'created_at' => now()],
            ['name' => 'Phòng mua sắm vật tư', 'created_at' => now()],
            ['name' => 'Phòng nghiên cứu và phát triển', 'created_at' => now()],
            ['name' => 'Phòng vận chuyển', 'created_at' => now()],
        ];

        Department::insert($departments);
    }
}
