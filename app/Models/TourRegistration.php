<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TourRegistration extends Model
{
    use HasFactory, SoftDeletes;
    protected $primaryKey = 'id';
    protected $table = 'tour_registrations';
}
