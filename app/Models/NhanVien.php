<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;

class NhanVien extends Authenticatable
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'ma_nhan_vien';
    protected $table = 'nhan_vien';

    public function phongBan()
    {
        return $this->belongsTo(PhongBan::class);
    }

    public function chucVu()
    {
        return $this->belongsTo(ChucVu::class);
    }
}
