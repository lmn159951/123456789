<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TourRequest;
use App\Models\Agency;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Http\Request;

class TourController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['tours'] = Tour::Paginate(5);

        return view('admin.pages.tours.index', $parameters);
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
            ->with('message', 'Tạo tour thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['tour'] = Tour::find($id);
        $parameters['regions'] = Region::all();

        return view('admin.pages.tours.edit', $parameters);
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

    public function destroy(int $id)
    {
        Tour::destroy($id);

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Xoá tour thành công');
    }
}
