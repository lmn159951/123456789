<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class TrangChuController extends Controller
{
    public function index()
    {
        $recordsRegions = Region::select('name')->get()->toArray();
        $firstTour = Tour::FirstTour();
        $highlightTours = Tour::HightLightTours();
        $slot = array();
        for($i=1; $i<=count($highlightTours); $i++)
        {
            $slot[$i] = Tour::Slot($highlightTours[$i]['tour_id']);
        }
        return view('nhanvien.pages.trangchu')->with('recordsRegions', $recordsRegions)
        ->with('firstTour', $firstTour)->with('highlightTours', $highlightTours)->with('slot', $slot);
    }

    public function allTour()
    {
        $today = Carbon::now()->format('Y-m-d');
        $allTours = DB::table('tours')
        ->where('registration_start_date', '<=', $today)
        ->where('registration_end_date', '>=', $today)
        ->select('tours.id','name', 'image', 'description_file', 'tour_start_date', 'tour_end_date',
             'registration_start_date', 'registration_end_date', 'price', 'max_people')
        ->orderBy('tours.id', 'DESC'); 
        $perPage = 4;
        
        if(!Auth::guard('user')->check())
        {
            $allTours = $allTours->paginate($perPage);
        }
        else
        {
            $allTours = $allTours
            ->join('agency_tours', 'tours.id', '=', 'agency_tours.tour_id')
            ->where('agency_id', Auth::guard('user')->user()->agency_id)
            ->paginate($perPage);
        }
        return view('nhanvien.pages.tatcacactour')->with('allTours', $allTours);
    }
}
