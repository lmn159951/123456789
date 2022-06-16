<?php

namespace Database\Seeders;

use App\Models\DonVi;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DonViSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $array = [
            ['ten_don_vi' => 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)',
            'dia_chi' => 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam'],

            ['ten_don_vi' => 'Tổng công ty hạ tầng mạng (VNPT-Net)',
            'dia_chi' => 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội'],

            ['ten_don_vi' => 'Chi nhánh Miền Nam',
            'dia_chi' => 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh'],

            ['ten_don_vi' => 'Chi nhánh Miền Trung',
            'dia_chi' => 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng'],

            ['ten_don_vi' => 'Tổng công ty truyền thông (VNPT-Media)',
            'dia_chi' => '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh'],

            ['ten_don_vi' => 'Công ty Công nghệ thông tin VNPT(VNPT-IT)',
            'dia_chi' => '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội'],

            ['ten_don_vi' => 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)',
            'dia_chi' => 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội'],

            ['ten_don_vi' => 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin',
            'dia_chi' => '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang'],
        ];

        DonVi::insert($array);

    }
}
