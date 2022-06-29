<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class TourRegistration extends Model
{
    use HasFactory, SoftDeletes;
    protected $primaryKey = 'id';
    protected $table = 'tour_registrations';

    protected $fillable = [
        'user_id',
        'tour_id',
        'support_id',
        'registration_date',
        'relative_fullname',
        'birthday',
        'gender',
        'relationship',
        'phone',
        'citizen_card',
        'cost',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function tour()
    {
        return $this->belongsTo(Tour::class);
    }

}
