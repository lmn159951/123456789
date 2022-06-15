<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DonVi extends Model
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'ma_don_vi';
    protected $table = 'don_vi';
    protected $fillable = ['ten_don_vi', 'dia_chi'];

}
