<?php

namespace Database\Seeders;

use App\Models\Agency;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class AgencySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $agencies = [
            [
                'name' => 'Trụ sở chính',
                'address' => 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)',
                'address' => 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Tổng công ty hạ tầng mạng (VNPT-Net)',
                'address' => 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Chi nhánh Miền Nam',
                'address' => 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Chi nhánh Miền Trung',
                'address' => 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Tổng công ty truyền thông (VNPT-Media)',
                'address' => '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Công ty Công nghệ thông tin VNPT(VNPT-IT)',
                'address' => '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)',
                'address' => 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội',
                'created_at' => Carbon::now()
            ],
            [
                'name' => 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin',
                'address' => '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang',
                'created_at' => Carbon::now()
            ],
        ];

        Agency::insert($agencies);

        print_r(Agency::all()->toArray());
    }
}
