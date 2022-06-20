<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class AgencyTour extends Pivot
{
    use HasFactory;
    protected $table = 'agency_tours';
}
