<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DangKyTour extends Model
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'ma_dang_ky_tour';
    protected $table = 'dang_ky_tour';
}
