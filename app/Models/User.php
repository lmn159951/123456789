<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;

class User extends Authenticatable
{
    use HasFactory, SoftDeletes;
    protected $primaryKey = 'id';
    protected $table = 'users';
    protected $fillable = [
        'username',
        'password',
        'is_admin'
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function agency()
    {
        return $this->belongsTo(Agency::class);
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function position()
    {
        return $this->belongsTo(Position::class);
    }

    public function tour_registration()
    {
        return $this->hasMany(TourRegistration::class);
    }

    public static function TTCN()
    {
        return User::where('users.id', Auth::guard('user')->user()->id)
        ->join('agencies', 'users.agency_id', '=', 'agencies.id')
        ->join('positions', 'users.position_id', '=', 'positions.id')
        ->join('departments', 'users.department_id', '=', 'departments.id')
        ->first();
    }
}
