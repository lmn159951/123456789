<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Support extends Model
{
    use HasFactory;

    protected $fillable = ['start_year', 'end_year', 'min_condition', 'max_condition', 'price'];
}
