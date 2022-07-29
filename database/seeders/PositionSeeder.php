<?php

namespace Database\Seeders;

use App\Models\Department;
use App\Models\Position;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class PositionSeeder extends Seeder
{

    public function run()
    {
        $positionNames = [
            'Nhân viên phân tích dữ liệu',
            'Quản trị hệ thống',
            'Lập trình viên',
            'Kỹ sư phần mềm',
            'Nhân viên phân tích hệ thống',
            'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng',
            'Thiết kế web/ dịch vụ Internet',
            'Người giám sát',
            'Trưởng Nhóm',
            'Sếp',
            'Trợ lí giám đốc',
            'Thư kí',
            'Nhân viên',
            'Cán bộ, viên chức',
            'Tổng giám đốc',
            'Quản lý',
            'Giám đốc',
            'Phó giám đốc',
            'Hội đồng quản trị',
            'Trưởng phòng',
            'Phó trưởng phòng',
            'Phó Giám đốc',
            'Giám đốc điều hành',
            'Giám đốc thông tin',
            'Trưởng phòng hoạt động',
            'Giám đốc tài chính',
            'Phó chủ tịch',
            'Chủ tịch',
            'Thành viên ban quản trị',
            'Phó phòng kinh doanh'
        ];

        $positions = $positionNames;
        $positions = array_map('ucfirst', $positions);
        $positions = array_unique($positions);
        $positions = collect(array_values($positions));

        $departments = Department::all();
        foreach ($departments as $key => $department)
        {
            $randomElements = $positions->random(rand(1, floor(count($positions) / 2)))->all();

            for ($index = 0; $index < count($randomElements); $index++)
            {
                $position = new Position();
                $position->name = $randomElements[$index];
                $position->slug = str()->slug("{$position->name} {$department->id}");
                $position->department_id = $department->id;
                $position->save();
            }
        }
    }
}
