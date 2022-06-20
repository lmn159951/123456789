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
}
