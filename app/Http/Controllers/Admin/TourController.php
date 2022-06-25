<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TourRequest;
use App\Models\Agency;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;

class TourController extends Controller
{
    public function index()
    {
        return view('admin.pages.tours.index');
    }

    public function datatableApi()
    {
        $tours = Tour::with(['region'])->get();

        return Datatables::of($tours)
            ->addIndexColumn()
            ->addColumn('action', function (Tour $tour) {
                return $tour->id;
            })
            ->addColumn('checkbox', function (Tour $tour) {
                return '
                    <label class="control control--checkbox">
                        <input type="checkbox" class="table-checkbox" name="ids[]" value="'.$tour->id.'" />
                        <div class="control__indicator"></div>
                    </label>
                ';
            })
            ->editColumn('price', function (Tour $tour) {
                return currency_format($tour->price, $separator = ',', $suffix = '₫');
            })
            ->editColumn('tour_start_date', function (Tour $tour) {
                return $tour->tour_start_date;
            })
            ->editColumn('tour_end_date', function (Tour $tour) {
                return $tour->tour_end_date;
            })
            ->editColumn('registration_start_date', function (Tour $tour) {
                return $tour->registration_start_date;
            })
            ->editColumn('registration_end_date', function (Tour $tour) {
                return $tour->registration_end_date;
            })
            ->rawColumns(['action', 'checkbox'])
            ->make();
    }

    public function search(Request $request)
    {
        $parameters = array_filter($request->except(['_token', '_method']), function($param) { return isset($param); });

        return redirect()->route('admin.users.index', $parameters);
    }

    public function create()
    {
        $parameters = [];
        $parameters['regions'] = Region::all();
        $parameters['agencies'] = Agency::all();

        return view('admin.pages.tours.create', $parameters);
    }

    public function store(TourRequest $request)
    {
        $tour = new Tour;

        if($request->hasFile('image'))
        {
            $destinationPath = 'public/images';
            $file = $request->file('image');
            $fileImage = time().".".$file->getClientOriginalExtension();
            $file->storeAs($destinationPath, $fileImage);
            $tour->image = $fileImage;
        }

        if($request->hasFile('description_file'))
        {
            $destinationPath = 'public/files';
            $file = $request->file('description_file');
            $fileDescription = time().".".$file->getClientOriginalExtension();
            $file->storeAs($destinationPath, $fileDescription);
            $tour->description_file =  $fileDescription;
        }

        $tour->fill($request->except(['image', 'description_file']));

        $tour->name = $request->name;
        $tour->tour_start_date = $request->tour_start_date;
        $tour->tour_end_date = $request->tour_end_date;
        $tour->registration_start_date = $request->registration_start_date;
        $tour->registration_end_date = $request->registration_end_date;
        $tour->price = $request->price;
        $tour->max_people = $request->max_people;
        $tour->region_id = $request->region_id;
        $tour->save();

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Tạo tour thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];

        $bln = DB::table('tours')->where('id',$id)->count() > 0;

        if($bln)
        {
            $parameters['tour'] = Tour::find($id);
            $parameters['regions'] = Region::all();

            return view('admin.pages.tours.edit', $parameters);
        }
        else
        {
            return redirect()->route('admin.tours.index');
        }
    }

    public function update(TourRequest $request, int $id)
    {
        $tour = Tour::find($id);
        $tour->name = $request->name;

        if($request->hasFile('image'))
        {
            $destinationPath = 'public/images';
            $file = $request->file('image');
            $fileImage = time().".".$file->getClientOriginalExtension();
            $file->storeAs($destinationPath, $fileImage);
            $tour->image = $fileImage;
        }

        if($request->hasFile('description_file'))
        {
            $destinationPath = 'public/files';
            $file = $request->file('description_file');
            $fileDescription = time().".".$file->getClientOriginalExtension();
            $file->storeAs($destinationPath, $fileDescription);
            $tour->description_file =  $fileDescription;
        }
        $tour->tour_start_date = $request->tour_start_date;
        $tour->tour_end_date = $request->tour_end_date;
        $tour->registration_start_date = $request->registration_start_date;
        $tour->registration_end_date = $request->registration_end_date;
        $tour->price = $request->price;
        $tour->max_people = $request->max_people;
        $tour->region_id = $request->region_id;
        $tour->save();

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Cập nhật tour thành công');
    }

    public function show(int $id)
    {
        $parameters = [];
        $parameters['tour'] = Tour::with(['region'])->find($id);

        return view('admin.pages.tours.show', $parameters);
    }

    public function showFileDescription(int $id)
    {
        $parameters = [];
        $parameters['tour'] = Tour::find($id);

        return view('admin.pages.tours.showFileDescription', $parameters);
    }

    public function destroy(int $id)
    {
        Tour::destroy($id);

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Xoá tour thành công');
    }

    public function deleteMany(Request $request)
    {
        Tour::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá nhân viên thành công'
        ]);
    }
}
