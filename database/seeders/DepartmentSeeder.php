<?php

namespace Database\Seeders;

use App\Models\Agency;
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
        $departments = collect([
            'Phòng kế toán',
            'Phòng tài chính',
            'Phòng hành chính',
            'Phòng nhân sự',
            'Phòng kinh doanh',
            'Phòng mua sắm vật tư',
            'Phòng nghiên cứu và phát triển',
            'Phòng vận chuyển',
        ]);

        $agencies = Agency::all();
        foreach ($agencies as $key => $agency)
        {
            $randomElements = $departments->random(rand(1, count($departments)))->all();

            for ($index = 0; $index < count($randomElements); $index++)
            {
                $department = new Department();
                $department->name = $randomElements[$index];
                $department->slug = str()->slug("{$department->name} {$agency->id}");
                $department->agency_id = $agency->id;
                $department->save();
            }
        }
    }
}
