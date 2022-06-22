<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\TourRegistration;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class Tour extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'tours';

    public function region()
    {
        return $this->belongsTo(Region::class);
    }

    public static function EmptySlotRemain($tourId)
    {
        $tour = Tour::where('id', $tourId)->first();
        return $tour->max_people - (TourRegistration::where('tour_id', $tourId)->get()->count());
    }

    public static function IsRegiterTour($tourId)
    {
        $today = Carbon::now()->format('Y-m-d');
        if(Tour::where('registration_start_date', '<=', $today)
        ->where('registration_end_date', '>=', $today)
        ->where('id', $tourId)
        ->get()->count() == 1)
            return true;
        return false;
    }

    public static function FirstTour()
    {
        return Tour::BestTour(0, 1);
    }

    public static function HightLightTours()
    {
        return Tour::BestTour(1, 8);
    }

    private static function BestTour($startNumber, $amount)
    {
        $perfectPrice = '3000000';
        $today = Carbon::now()->format('Y-m-d');
        if(Auth::guard('user')->check())
        {
            $tours = Tour::where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->where('price', '<=', $perfectPrice)
            ->join('agency_tours', 'tours.id', '=', 'agency_tours.tour_id')
            ->where('agency_id', Auth::guard('user')->user()->agency_id)
            ->get()
            ->skip($startNumber)
            ->take($amount)
            ->toArray();
            return $tours;
        }
        else
        {
            $tours = Tour::where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->where('price', '<=', $perfectPrice)
            ->get()
            ->skip($startNumber)
            ->take($amount)
            ->toArray();
            return $tours;
        }
    }
    public function agencies()
    {
        return $this->belongsToMany(Agency::class, 'agency_tours');
    }
    public function tour_registrations()
    {
        return $this->belongsToMany(TourRegistration::class,'tour_registrations');
    }
}
