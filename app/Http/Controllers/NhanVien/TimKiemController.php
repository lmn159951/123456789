<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\TourRegistration;

class TimKiemController extends Controller
{
    public function search($tourName=null, $regionId=null, $priceFrom = 0, $priceTo = 99999999999)
    {
        
        $today = Carbon::now()->format('Y-m-d');
        $tours = [];
        if(Auth::check())
        {
            $tours = Tour::select(DB::raw('tours.id, tour_registrations.tour_id, name, image, description_file, tour_start_date,
            price, agency_id'))
            ->join('tour_registrations', 'tours.id', '=', 'tour_registrations.tour_id','left outer')
            ->join('agency_tours','agency_tours.tour_id','=','tours.id')
            ->groupBy('tours.id','tour_id', 'name','image', 'description_file', 'tour_start_date',
            'price', 'agency_id')
            // ->where('tour_registrations.user_id', '<>', Auth::user()->id)
            ->where('agency_id', Auth::user()->agency_id)
            ->where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->orderBy('tours.id', 'DESC');   
        }
        else{
            $tours = Tour::select(DB::raw('tours.id, tour_registrations.tour_id, name, image, description_file, tour_start_date, 
            price'))
            ->join('tour_registrations', 'tour_registrations.tour_id', '=', 'tours.id',' left outer')
            ->groupBy('tours.id','tour_registrations.tour_id', 'name','image', 'description_file', 'tour_start_date',
            'price')
            ->where('registration_start_date', '<=', $today)
            ->where('registration_end_date', '>=', $today)
            ->orderBy('tours.id', 'DESC'); 
        }
        //if($emptySlotRemain!=null)
        //    $tours = $tours->having('empty_slot_remain', '>=', $emptySlotRemain);
        if($tourName!=null)
            $tours = $tours->having('name', 'LIKE', '%'.$tourName.'%');
        if($regionId!='null')
            $tours = $tours->where('region_id', (int) $regionId);

        if($priceFrom==null){ $priceFrom=0;}
        if($priceTo==null){ $priceTo=99999999999; }
        if((int) $priceTo >= (int) $priceFrom)
                $tours->having('price', '>=', $priceFrom)
                ->having('price', '<=', $priceTo);

                
        $perPage = 4;
        $tours = $tours->paginate($perPage);
        return $tours;
    }



    public function index(Request $request)
    {
        $recordsRegions = Region::select('id','name')->get();
        // $emptySlotRemain = $request->get('emptyslotremain');
        $tourName = $request->get('tourname');
        $regionId = $request->get('regionid');
        $priceFrom = $request->get('pricefrom');
        $priceTo = $request->get('priceto');
        $tours =  $this->search( $tourName, $regionId, $priceFrom, $priceTo);
        return view('nhanvien.pages.timkiem')->with('tours',$tours)
        ->with('recordsRegions', $recordsRegions)->with('request', $request);
    }


}
