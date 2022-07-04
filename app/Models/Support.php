<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Support extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['start_year', 'end_year', 'support_id', 'min_condition', 'max_condition', 'price'];

    public function scopeSupporting($query)
    {
        return $query->where('start_year', '<=', date('Y'))->where('end_year', '>=', date('Y'));
    }

    public function scopeUnsupport($query)
    {
        return $query->where('end_year', '>', date('Y'));
    }

    public function scopeSupported($query)
    {
        return $query->where('end_year', '<', date('Y'));
    }

    public function scopeAvailable($query)
    {
        return $query->supporting()->orWhere->unsupport();
    }

    public function scopeOrderLatest($query)
    {
        return $query->orderBy('start_year', 'DESC')->orderBy('min_condition', 'ASC');
    }

}
