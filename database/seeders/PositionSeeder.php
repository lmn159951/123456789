<?php

namespace Database\Seeders;

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

        $array = $positionNames;
        $array = array_map('ucfirst', $array);
        $array = array_unique($array);
        $array = array_values($array);

        $positionNames = $array;
        $array = array_map(function($item) { return [ 'name' => $item, 'created_at' => Carbon::now() ]; }, $array);

        Position::insert($array);

        print_r(Position::all()->toArray());
    }
}
