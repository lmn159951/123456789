<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DonVi_Tour extends Model
{
    use HasFactory, SoftDeletes;

    protected $primaryKey = 'ma_don_vi_tour';
    protected $table = 'don_vi_tour';
}
