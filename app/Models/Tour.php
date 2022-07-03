<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\TourRegistration;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class Tour extends Model
{
    use HasFactory, SoftDeletes;
    protected $primaryKey = 'id';
    protected $table = 'tours';
    protected $fillable = [
        'name',
        'image',
        'description_file',
        'tour_start_date',
        'tour_end_date',
        'registration_start_date',
        'registration_end_date',
        'price',
        'max_people',
        'region_id',
    ];

    public function scopeRegistering($query)
    {
        return $query->where('registration_start_date', '<', now())->where('registration_end_date', '>', now());
    }

    public function scopeRegistered($query)
    {
        return $query->where('registration_end_date', '<', now());
    }

    public function scopeUnregister($query)
    {
        return $query->where('registration_start_date', '>', now());
    }

    public function scopeAvailable($query)
    {
        return $query->registering()->orWhere->unregister();
    }

    public function isRegisteredTour()
    {
        return TourRegistration::where('tour_id', $this->id)->exists();
    }

    public function region()
    {
        return $this->belongsTo(Region::class);
    }
    public function agencies()
    {
        return $this->belongsToMany(Agency::class, 'agency_tours');
    }

    public function tour_registrations()
    {
        return $this->belongsToMany(TourRegistration::class,'tour_registrations');
    }

    public static function Slot($tourId=0)
    {
        return TourRegistration::where('tour_id', $tourId)->get()->count();
    }

    public static function EmptySlotRemain($tourId=0)
    {
        $tour = Tour::where('id', $tourId)->first();
        return  $tour->max_people - (Tour::Slot($tourId));
    }

    public static function TourInfo($tourId=0)
    {
        $tourInfo = Tour::where('id',$tourId)->first();
        return $tourInfo;
    }

    public static function IsRegiterTour($tourId=0)
    {
        $today = Carbon::now()->format('Y-m-d');

        if(Tour::where('registration_start_date', '<=', $today)
        ->where('registration_end_date', '>=', $today)
        ->where('id', $tourId)
        ->get()->count() == 1)
            return true;
        return false;
    }

    public static function CheckTourRegisted($tourId)
    {
        if(TourRegistration::where('user_id', Auth::user()->id)->where('tour_id', $tourId)->get()->count() > 0)
            return true;
        return false;
    }

    public static function ToursCanRegis()
    {
        $today = Carbon::now()->format('Y-m-d');
        if(Auth::check())
        {
            $tours = Tour::where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->select('name', 'image', 'description_file', 'tour_start_date', 'tour_end_date',
            'registration_start_date', 'registration_end_date', 'price', 'max_people', 'tour_id')
            ->groupBy('name', 'image', 'description_file', 'tour_start_date', 'tour_end_date',
            'registration_start_date', 'registration_end_date', 'price', 'max_people', 'tour_id')
            ->join('agency_tours', 'tours.id', '=', 'agency_tours.tour_id')
            ->where('agency_id', Auth::user()->agency_id)
            ->orderBy('tours.id', 'DESC')
            ->get()
            ->toArray();

            for($i=0; $i<count($tours); $i++)
            {
                if(Tour::CheckTourRegisted($tours[$i]['tour_id']))
                {
                    unset($tours[$i]);
                }
            }
            return $tours;
        }
        else
        {
            $tours = Tour::where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->select([DB::raw('id as tour_id'),'name', 'image', 'description_file', 'tour_start_date', 'tour_end_date',
            'registration_start_date', 'registration_end_date', 'price', 'max_people'])
            ->get()
            ->toArray();
            return $tours;
        }
    }
}
