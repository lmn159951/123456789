<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TourRequest;
use App\Models\Agency;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Http\Request;
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
            ->editColumn('price', function (Tour $tour) {
                return currency_format($tour->price, $separator = ',', $suffix = '₫');
            })
            ->editColumn('max_people', function (Tour $tour) {
                return (string)$tour->max_people;
            })
            ->rawColumns(['action'])
            ->make();
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
        $tour = new Tour();
        $tour->fill($request->validated());

        if($request->hasFile('file_image'))
        {
            $tour->image = time().".".$request->file('file_image')->getClientOriginalExtension();
            $request->file('file_image')->storeAs('public/images', $tour->image);
        }

        if($request->hasFile('file_description'))
        {
            $tour->description_file = time().".".$request->file('file_description')->getClientOriginalExtension();
            $request->file('file_description')->storeAs('public/files', $tour->description_file);
        }

        $tour->save();

        $tour->agencies()->attach($request->agency_ids);
        $tour->save();

        return redirect()->route('admin.tours.index')->with('message', 'Tạo tour thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['tour'] = Tour::with('agencies')->find($id);
        $parameters['regions'] = Region::all();
        $parameters['agencies'] = Agency::all();
        $parameters['agency_ids'] = $parameters['tour']->agencies()->get()->pluck('id')->toArray();

        return view('admin.pages.tours.edit', $parameters);
    }

    public function update(TourRequest $request, int $id)
    {
        $tour = Tour::find($id);
        $tour->fill($request->validated());

        if($request->hasFile('file_image'))
        {
            $tour->image = time().".".$request->file('file_image')->getClientOriginalExtension();
            $request->file('file_image')->storeAs('public/images', $tour->image);
        }

        if($request->hasFile('file_description'))
        {
            $tour->description_file = time().".".$request->file('file_description')->getClientOriginalExtension();
            $request->file('file_description')->storeAs('public/files', $tour->description_file);
        }

        $tour->save();

        $tour->agencies()->attach($request->agency_ids);
        $tour->save();

        return redirect()->route('admin.tours.index')->with('message', 'Cập nhật tour thành công');
    }

    public function show(int $id)
    {
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

        return redirect()->route('admin.tours.index')->with('message', 'Xoá tour thành công');
    }

    public function deleteMany(Request $request)
    {
        Tour::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá nhân viên thành công'
        ]);
    }
}
