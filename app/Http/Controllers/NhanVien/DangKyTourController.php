<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Tour;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\NhanVien\DangKyTourRequest;
use App\Models\TourRegistration;
use Illuminate\Support\Facades\DB;
use App\Models\Support;

class DangKyTourController extends Controller
{
    public function checkTour($tour_id)
    {
        $today = Carbon::now()->format('Y-m-d');
        //Kiem tra ngay dang ky
        if(Tour::where('id', $tour_id)
        ->where('registration_start_date', '<=', $today)
        ->where('registration_end_date', '>=', $today)
        ->get()
        ->count() == 0)
            return false;

        //Kiem tra don vi
        if(Tour::where('tours.id', $tour_id)
        ->join('agency_tours', 'tours.id', '=', 'agency_tours.tour_id')
        ->where('agency_id', Auth::user()->agency_id)
        ->get()
        ->count() == 0)
            return false;
        return true;
    }

    public function tourhistory()
    {
        
        $results = TourRegistration::where('user_id', Auth::user()->id)
        ->join('tours', 'tour_registrations.tour_id', '=', 'tours.id')
        ->select('user_id',DB::raw('COUNT(user_id) as member_count'), 'tour_id', 'name', 
        DB::raw('SUM(cost) as total_cost'), 'tours.tour_start_date', 
        'tours.tour_end_date','registration_start_date','registration_end_date')
        ->groupBy('user_id', 'tour_id', 'name', 'tours.tour_start_date', 
        'tours.tour_end_date','registration_start_date','registration_end_date')
        ->orderBy('tour_id', 'DESC')
        ->get();
        return view('nhanvien.pages.lichsudatour')->with('results', $results);
    }

    //
    public function index($tour_id=0)
    {

        $emptySlotRemain = Tour::EmptySlotRemain($tour_id);
        $tourInfo = Tour::TourInfo($tour_id);
        //Da dang ky
        $relativeInfos = TourRegistration::where('user_id', Auth::user()->id)
        ->where('tour_id', $tour_id)->get();
        if($relativeInfos->count() > 0)
        {
            return view('nhanvien.pages.dangkytour')->with('tourInfo', $tourInfo)
        ->with('emptySlotRemain', $emptySlotRemain)->with('relativeInfos', $relativeInfos);
        }    
        
        return view('nhanvien.pages.dangkytour')->with('tourInfo', $tourInfo)
        ->with('emptySlotRemain', $emptySlotRemain);
    }

    public function UpdateMemberToTourRegistrations($request=null, $tour_id=null, $id=null, $index=null)
    {
        for($i=0; $i<count($request['id']); $i++)
            if($i==$index)
            {
                DB::table('tour_registrations')->where('id', $request['id'][$i])->update([
                    'relative_fullname' => $request['relative_fullname'][$i],
                    'birthday' => Carbon::createFromFormat('d-m-Y', $request['birthday'][$i])->format('Y-m-d'),
                    'gender' => $request['gender'][$i],
                    'relationship' => $request['relationship'][$i],
                    'phone' => $request['phone'][$i],
                    'citizen_card' => '1856'
                ]);
                break;
            }
    }

    public function InsertMemberToTourRegistrations($request=null, $registrationDate=null, $price=null, $tour_id=null, $index=null)
    {
        for($i=0; $i<count($request['id']); $i++)
            if($i==$index)
            {
                TourRegistration::insert([
                    'user_id' => Auth::user()->id,
                    'tour_id' => $tour_id,
                    'registration_date' => $registrationDate,
                    'relative_fullname' => $request['relative_fullname'][$i],
                    'birthday' => Carbon::createFromFormat('Y-m-d', $request['birthday'][$i])->format('Y-m-d'),
                    'gender' => $request['gender'][$i],
                    'relationship' => $request['relationship'][$i],
                    'phone' => $request['phone'][$i],
                    'citizen_card' => $request['citizen_card'][$i],
                    'cost' =>  $price,
                ]);
                break;
            }

    }

    public function InsertUserToTourRegistrations($registrationDate=null, $supportNow=null, $tour_id=null)
    {
        $price = Tour::where('id', $tour_id)->first()->price;
        
        
        $tour = new TourRegistration;
        $tour->user_id = Auth::user()->id;
        $tour->tour_id = $tour_id;
        $tour->registration_date = $registrationDate;
        $tour->relative_fullname = Auth::user()->fullname;
        $tour->birthday = Auth::user()->birthday;
        $tour->gender = Auth::user()->gender;
        $tour->relationship = null;
        $tour->phone = Auth::user()->phone;
        $tour->citizen_card = Auth::user()->citizen_card;
        if($supportNow != false)
        {
            $priceSupport = $supportNow->price;
            $tour->support_id = $supportNow->support_id;
            $tour->cost = ($price < $priceSupport) ? 0 : ($price-$priceSupport);
        }
        else $tour->cost = $price;
        $tour->save();
    }

    public function DeleteMemberTourRegistration($id)
    {
        TourRegistration::where('id',$id)->delete();
    }

    public function AllSupportNow()
    {
        $today = Carbon::now()->format('Y');
        return Support::where('start_year', '<=', $today)
        ->where('end_year', '>=', $today)
        ->get();
    }

    public function ExpYear()
    {
        $today = Carbon::now();
        $dt = new Carbon(Auth::user()->start_date);
        return $today->diffInYears($dt);
    }

    public function CheckUsedSupport($support_id)
    {
        if(TourRegistration::where('support_id', $support_id)->get()->count() == 1)
            return true;
        return false;
    }

    public function GetSupportNow()
    {
        $allSupportNow = $this->AllSupportNow();
        $expYear = $this->ExpYear();
        foreach($allSupportNow as $supportNow)
        {
            if(!$this->CheckUsedSupport($supportNow->support_id) && $expYear >= $supportNow->min_condition
            && $expYear <= $supportNow->max_condition)
            {
                return $supportNow;
            }
        }
        return false;
    }

    public function tourregistration(Request $request, $tour_id=0)
    {
        // $validated = $request->validated();
        if(!$this->checkTour($tour_id))
            return abort(403);

        $numberMembersInput = 0;
        if(isset($request->post()['id']))
        {
            $numberMembersInput = count($request->post()['id']);

            //Kiem tra dau vao id cua member hop le voi tour id
            for($i=0; $i<$numberMembersInput; $i++)
            {
                $id = $request->post('id')[$i];
                $count = TourRegistration::where('user_id', Auth::user()->id)
                ->where('id', $id)->where('tour_id', $tour_id)->get()->count();

                if($count !=1 && $id != "0")
                    // dd("Lỗi sửa id!!");
                    return abort(403);
            }
        }

        $relativeInfos = TourRegistration::where('user_id', Auth::user()->id)
        ->where('tour_id', $tour_id);
        $registrationDateNow = Carbon::now()->format('Y-m-d');
        $price = Tour::where('id', $tour_id)->first()->price;
        $emptySlotRemain = Tour::EmptySlotRemain($tour_id);
        //Chua dang ky
        if($relativeInfos->get()->count() == 0)
        {
            if($numberMembersInput+1 > $emptySlotRemain)
                return abort(403);
                // dd("Quá số ghế trống");
            //them vao csdl
            //them ho tro neu co
            $this->InsertUserToTourRegistrations($registrationDateNow,
            $this->GetSupportNow(), $tour_id);


            if($numberMembersInput == 0)
            {
                return redirect()->route('nhanvien.tourhistory');
                // dd("Đăng ký tour thành công!");
            }
            for($i=0; $i<$numberMembersInput; $i++)
                $this->InsertMemberToTourRegistrations($request->post(), $registrationDateNow, $price, $tour_id, $i);
            return redirect()->route('nhanvien.tourhistory');
            // dd("Đăng ký tour thành công!");
        }

        //Da dang ky
        //Them, cap nhat hoac xoa thong tin thanh vien

        //Xoa
        $relativeInfos = $relativeInfos->where('relationship', '<>', null)->get();
        if($numberMembersInput == 0)
        {
            foreach($relativeInfos as $relativeInfo)
            {
                $this->DeleteMemberTourRegistration($relativeInfo->id);
            }
        }
        else
        foreach($request->post('id') as $id)
        {
            foreach($relativeInfos as $relativeInfo)
            {
                if($id == $relativeInfo->id) break;
            }
            $this->DeleteMemberTourRegistration($id);
        }

        //Them, cap nhat
        for($i=0; $i<$numberMembersInput; $i++)
        {
            $id = $request->post('id')[$i];
            if($id == "0")
            {
                $this->InsertMemberToTourRegistrations($request->post(), $registrationDateNow, $price, $tour_id, $i);
            }

            else if(TourRegistration::where('id', $id)->count() == 1)
            {
                $this->UpdateMemberToTourRegistrations($request->post(), $tour_id, $i);
            }

        }

        return redirect()->route('nhanvien.tourhistory');
    }

    public function deletetour(Request $request)
    {
        $tourId = $request->post('tourid');
        TourRegistration::where('user_id', Auth::user()->id)
        ->where('tour_id', $tourId)->delete();
    }
}
