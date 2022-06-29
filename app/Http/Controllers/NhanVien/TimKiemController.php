<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class TimKiemController extends Controller
{
    public function search($emptySlotRemain=null, $tourName=null, $regionId=null, $priceFrom = 0, $priceTo = 99999999999)
    {
        $today = Carbon::now()->format('Y-m-d');
        $tours;
        if(Auth::guard('user')->check())
        {
        $tours = Tour::select(DB::raw('tours.id, tour_registrations.tour_id, name, image, description_file, tour_start_date,
        max_people, price, count(user_id) as slot,max_people - count(user_id) as empty_slot_remain, agency_id'))
        ->join('tour_registrations', 'tours.id', '=', 'tour_registrations.tour_id','left outer')
        ->groupBy('tours.id','tour_id', 'name','image', 'description_file', 'tour_start_date', 'max_people',
        'price', 'user_id', 'agency_id')
        ->where('registration_start_date', '<=', $today)
        ->where('registration_end_date', '>=', $today)
        ->orderBy('tours.id', 'DESC');
        }
        else{
            $tours = Tour::select(DB::raw('tours.id, tour_registrations.tour_id, name, image, description_file, tour_start_date,
            max_people, price, count(user_id) as slot,max_people - count(user_id) as empty_slot_remain'))
            ->join('tour_registrations', 'tours.id', '=', 'tour_registrations.tour_id','left outer')
            ->groupBy('tours.id','tour_id', 'name','image', 'description_file', 'tour_start_date', 'max_people',
            'price', 'user_id')
            ->where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->orderBy('tours.id', 'DESC');
        }
        if(Auth::guard('user')->check())
        {
            
        }
        if($emptySlotRemain!=null)
            $tours = $tours->having('empty_slot_remain', '>=', $emptySlotRemain);
        if($tourName!=null)
            $tours = $tours->having('name', 'LIKE', '%'.$tourName.'%');
        if($regionId!='null')
            $tours = $tours->where('region_id', (int) $regionId);
        if($priceFrom != null && $priceTo != null)
            if((int) $priceTo >= (int) $priceFrom)
                $tours->having('price', '>=', $priceFrom)
                ->having('price', '<=', $priceTo);
        $perPage = 3;
        $tours = $tours->paginate($perPage); 
        return $tours;
    }

    
    public function index(Request $request)
    { 
        $recordsRegions = Region::select('id','name')->get();
        $emptySlotRemain = $request->get('emptyslotremain');
        $tourName = $request->input('tourname');
        $regionId = $request->input('regionid');
        $priceFrom = $request->input('pricefrom');
        $priceTo = $request->input('priceto');
        $tours =  $this->search($emptySlotRemain, $tourName, $regionId, $priceFrom, $priceTo);
        return view('nhanvien.pages.timkiem')->with('tours',$tours)
        ->with('recordsRegions', $recordsRegions)->with('request', $request);
    }

    
}
