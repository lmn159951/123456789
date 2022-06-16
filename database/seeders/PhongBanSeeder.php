<?php

namespace Database\Seeders;

use App\Models\PhongBan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PhongBanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        PhongBan::insert([
            ['ten_phong_ban' => 'Phòng kế toán'],
            ['ten_phong_ban' => 'Phòng Kiểm toán'],
            ['ten_phong_ban' => 'Phòng kinh doanh'],
            ['ten_phong_ban' => 'Phòng hành chính'],
            ['ten_phong_ban' => 'Phòng nhân sự'],
            ['ten_phong_ban' => 'Phòng Chăm sóc Khách hàng'],
            ['ten_phong_ban' => 'Phòng tài chính'],
            ['ten_phong_ban' => 'Phòng nghiên cứu và phát triển'],
            ['ten_phong_ban' => 'Phòng quản lý chất lượng'],
        ]);
    }
}

