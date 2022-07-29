<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Agency extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'address'];

    public function tours()
    {
        return $this->belongsToMany(Tour::class, 'agency_tours');
    }
}
