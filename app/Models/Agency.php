<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agency extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'agencies';

    protected $fillable = ['name', 'address'];
}
