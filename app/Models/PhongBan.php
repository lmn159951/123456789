<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PhongBan extends Model
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'ma_phong_ban';
    protected $table = 'phong_ban';
}
