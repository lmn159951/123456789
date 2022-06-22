<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Region;
use App\Models\Tour;
use Carbon\Carbon;

class TrangChuController extends Controller
{
    public function index()
    {
        $recordsRegions = Region::select('name')->get()->toArray();
        $firstTour = Tour::FirstTour();
        $highlightTours = Tour::HightLightTours();
        return view('nhanvien.pages.trangchu')->with('recordsRegions', $recordsRegions)
        ->with('firstTour', $firstTour)->with('highlightTours', $highlightTours);
    }

    public function allTour()
    {
        $allTours;
        $today = Carbon::now()->format('Y-m-d');
        if(!Auth::guard('user')->check())
        {
            $allTours = Tour::where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->orderBy('id', 'desc')
            ->get();
        }
        else
        {
            $allTours = Tour::where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->orderBy('tours.id', 'desc')
            ->join('agency_tours', 'tours.id', '=', 'agency_tours.tour_id')
            ->where('agency_id', Auth::guard('user')->user()->agency_id)
            ->get();
        }
        return view('nhanvien.pages.tatcacactour')->with('allTours', $allTours);
    }
}
