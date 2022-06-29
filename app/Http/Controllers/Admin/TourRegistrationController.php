<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Tour;
use App\Models\TourRegistration;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class TourRegistrationController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['tour_registrations'] = TourRegistration::Paginate(5);
        $parameters['users'] = User::all();
        $parameters['tours'] = Tour::all();

        return view('admin.pages.tour_registrations.index', $parameters);
    }

    public function datatableApi()
    {
        $tour_registration = TourRegistration::with(['user','tour'])->get();

        return DataTables::of($tour_registration)
            ->addIndexColumn()
            ->addColumn('action', function (TourRegistration $tourRegistration) {
                return $tourRegistration->id;
            })
            ->editColumn('cost', function (TourRegistration $tourRegistration) {
                return currency_format($tourRegistration->cost, $separator = ',', $suffix = '₫');
            })
            ->rawColumns(['action'])
            ->make();
    }


    public function show($id)
    {
        $parameters = [];
        $parameters['tour_registration'] = TourRegistration::find($id);

        return view('admin.pages.tour_registrations.show',$parameters);
    }

    public function destroy(int $id)
    {
        TourRegistration::destroy($id);

        return redirect()
            ->route('admin.tour_registrations.index')
            ->with('message', 'Xoá đăng ký thành công');
    }

    public function deleteMany(Request $request)
    {
        TourRegistration::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá đăng ký tour thành công'
        ]);
    }
}
