<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class HoTro extends Model
{
    use HasFactory, SoftDeletes;
    
    protected $primaryKey = 'ma_ho_tro';
    protected $table = 'ho_tro';
}
