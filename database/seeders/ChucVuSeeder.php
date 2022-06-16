<?php

namespace Database\Seeders;

use App\Models\ChucVu;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ChucVuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $array = [
            'Nhân viên phân tích dữ liệu',
            'Quản trị hệ thống',
            'Lập trình viên',
            'Kỹ sư phần mềm',
            'Nhân viên phân tích hệ thống',
            'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng',
            'Thiết kế web/ dịch vụ Internet',
            'Người giám sát',
            'Trưởng Nhóm',
            'trợ lí giám đốc',
            'thư kí',
            'nhân viên',
            'Cán bộ, viên chức',
            'tổng giám đốc',
            'quản lý',
            'giám đốc',
            'phó giám đốc',
            'Hội đồng quản trị',
            'trưởng phòng',
            'phó trưởng phòng',
            'thư kí',
            'nhân viên',
            'Giám đốc',
            'Phó Giám đốc',
            'giám đốc điều hành',
            'giám đốc thông tin',
            'trưởng phòng hoạt động',
            'giám đốc tài chính',
            'phó chủ tịch',
            'Quản lý',
            'trưởng phòng',
            'Trưởng Bộ phận',
            'trưởng phòng nhân sự',
            'trưởng phòng tài chính',
            'trưởng phòng kế toán',
            'trưởng phòng sản xuất',
            'trưởng phòng marketing',
            'Trưởng Nhóm',
            'trợ lí giám đốc',
            'thư kí',
            'nhân viên',
            'Giám đốc',
            'Giám đốc điều hành',
            'Giám đốc thông tin',
            'Giám đốc tài chính',
            'Chủ tịch',
            'Trưởng phòng hoạt động',
            'Thành viên ban quản trị',
            'Phó Giám đốc',
            'Phó chủ tịch',
            'Quản lý',
            'trưởng phòng nhân sự',
            'trưởng phòng tài chính',
            'trưởng phòng kế toán',
            'trưởng phòng sản xuất',
            'trưởng phòng marketing',
            'Người giám sát',
            'Trưởng Nhóm',
            'trợ lí giám đốc',
            'Trưởng Bộ phận',
            'trưởng phòng',
            'người giám sát',
            'Thư kín',
            'nhân viên',
            'Giám đốc',
            'Phó Giám đốc',
            'giám đốc điều hành',
            'giám đốc thông tin',
            'trưởng phòng hoạt động',
            'giám đốc tài chính',
            'Chủ tịch',
            'phó chủ tịch',
            'Quản lý',
            'trưởng phòng',
            'Trưởng Bộ phận',
            'trưởng phòng nhân sự',
            'trưởng phòng tài chính',
            'trưởng phòng kế toán',
            'trưởng phòng sản xuất',
            'trưởng phòng marketing',
            'Người giám sát',
            'Trưởng Nhóm',
            'trợ lí giám đốc',
            'thư kí',
            'nhân viên',
            'Phó phòng kinh doanh',
        ];

        $array = array_map('ucfirst', $array);
        $array = array_unique($array);
        $array = array_values($array);
        $array = array_map(function($item) { return [ 'ten_chuc_vu' => $item ]; }, $array);

        ChucVu::insert($array);
    }
}
