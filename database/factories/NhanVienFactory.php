<?php

namespace Database\Factories;

use App\Models\ChucVu;
use App\Models\DonVi;
use App\Models\NhanVien;
use App\Models\PhongBan;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\NhanVien>
 */
class NhanVienFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $ma_phong_ban = PhongBan::inRandomOrder()->first()->ma_phong_ban;
        $ma_don_vi = DonVi::inRandomOrder()->first()->ma_don_vi;
        $ten_nhan_vien = $this->faker->name;

        $ten_tai_khoan = '';
        $ten_tai_khoan .= getFullName(convertName($ten_nhan_vien));
        $ten_tai_khoan .= paddingNumberLeadingZeros($ma_don_vi);
        $ten_tai_khoan .= paddingNumberLeadingZeros($ma_phong_ban);

        return [
            'ten_nhan_vien' => $ten_nhan_vien,
            'ten_tai_khoan' => $ten_tai_khoan,
            'mat_khau' => Hash::make('1'),
            'email' => $this->faker->freeEmail,
            'gioi_tinh' => $this->faker->randomElement(['Nam', 'Nữ']),
            'so_dien_thoai' => $this->faker->numerify('0#########'),
            'cmnd' => $this->faker->numerify('3########'),
            'ma_phong_ban' => $ma_phong_ban,
            'ma_chuc_vu' => ChucVu::inRandomOrder()->first()->ma_chuc_vu,
            'ma_don_vi' => $ma_don_vi,
            'ngay_vao_lam' => $this->faker->dateTimeBetween($startDate = '-20 years', $endDate = 'now', $timezone = 'Asia/Ho_Chi_Minh'),
            'la_quan_tri' => '0',
        ];
    }
}
