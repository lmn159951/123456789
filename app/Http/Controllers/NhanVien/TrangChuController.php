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
    private $numberOfHightLightTours = 8;

    public function FirstTour($tourCanRegis)
    {
        if(count($tourCanRegis) == 0)
            return null;
        foreach($tourCanRegis as $tour)
        {
            return $tour;
        }
    }

    public function HightLightTours($tourCanRegis)
    {
        $highlightTours = [];
        $exeptFirst = true;
        $i = 0;
        if(count($tourCanRegis) < $this->numberOfHightLightTours+1)
        {
            foreach($tourCanRegis as $tour)
            {
                if($exeptFirst){ $exeptFirst = false; continue;}
                $highlightTours[$i] = $tour;
                ++$i;
            }
        }
        else
        {
            foreach($tourCanRegis as $tour)
            {
                if($exeptFirst){ $exeptFirst = false; continue;}
                $highlightTours[$i] = $tour;
                ++$i;
                if($i==8) break;
            }
        }
        return $highlightTours;
    }

    public function index()
    {
        $recordsRegions = Region::select('id','name')->get()->toArray();
        $tourCanRegis = Tour::ToursCanRegis();
        $firstTour[0] = $this->FirstTour($tourCanRegis);
        $highlightTours = $this->HightLightTours($tourCanRegis);
        $slot = array();
        for($i=0; $i< count($highlightTours); $i++)
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
        ->select(DB::raw('tours.id as tour_id'),'name', 'image', 'description_file', 'tour_start_date', 'tour_end_date',
             'registration_start_date', 'registration_end_date', 'price', 'max_people')
        ->orderBy('tours.id', 'DESC');
        $perPage = 4;

        if(!Auth::check())
        {
            $allTours = $allTours->paginate($perPage);
        }
        else
        {
            $allTours = $allTours
            ->join('agency_tours', 'tours.id', '=', 'agency_tours.tour_id')
            ->groupBy('tours.id','name', 'image', 'description_file', 'tour_start_date', 'tour_end_date',
             'registration_start_date', 'registration_end_date', 'price', 'max_people')
            ->where('agency_id', Auth::user()->agency_id)
            ->paginate($perPage); 
        }
        $slot = []; $i=0;
        foreach($allTours as $tour)
        {
            $slot[$i] = Tour::Slot($tour->tour_id);
            ++$i;
        }
        return view('nhanvien.pages.tatcacactour')->with('allTours', $allTours)->with('slot', $slot);
    }
}
