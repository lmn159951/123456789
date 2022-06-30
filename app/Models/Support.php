<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Support extends Model
{
    use HasFactory;

    protected $fillable = ['start_year', 'end_year', 'support_id', 'min_condition', 'max_condition', 'price'];

    public function scopeSupporting($query)
    {
        return $query->where('start_year', '<=', date('Y'))->where('end_year', '>=', date('Y'));
    }

    public function scopeSupported($query)
    {
        return $query->where('end_year', '<', date('Y'));
    }

    public function scopeAvailable($query)
    {
        return $query->where('start_year', '>=', date('Y'));
    }

    public function scopeOrderLatest($query)
    {
        return $query->orderBy('start_year', 'DESC')->orderBy('min_condition', 'ASC');
    }

}
