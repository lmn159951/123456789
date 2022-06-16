<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class NhanVien extends Authenticatable
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'ma_nhan_vien';
    protected $fillable = [
        'ten_tai_khoan',
        'password',
        'la_quan_tri'
    ];
    protected $table = 'nhan_vien';

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    protected $hidden = [
        'password',
        'remember_token',
    ];
}
