<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TourRequest;
use App\Models\Region;
use App\Models\Tour;
use Illuminate\Http\Request;

class TourController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['tours'] = Tour::with('region')->paginate(5);

        return view('admin.pages.tours.index', $parameters);
    }

    public function create()
    {
        $parameters = [];
        $parameters['regions'] = Region::all();

        return view('admin.pages.tours.create', $parameters);
    }

    public function store(TourRequest $request)
    {
        $tour = new Tour;
        $tour->name = $request->post('name');
        $tour->image = $request->post('image');
        $tour->description_file = $request->post('description_file');
        $tour->tour_start_date = $request->post('tour_start_date');
        $tour->tour_end_date = $request->post('tour_end_date');
        $tour->registration_start_date = $request->post('registration_start_date');
        $tour->registration_end_date = $request->post('registration_end_date');
        $tour->price = $request->post('price');
        $tour->max_people = $request->post('max_people');
        $tour->region_id = $request->post('region_id');
        $tour->save();

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Tạo nhân viên thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['regions'] = Region::all();
        $parameters['user'] = Tour::find($id);

        return view('admin.pages.tours.edit', $parameters);
    }

    public function show(int $id)
    {
        $parameters = [];
        $parameters['user'] = Tour::with('region')->find($id);

        return view('admin.pages.tours.show', $parameters);
    }

    public function update(TourRequest $request, int $id)
    {
        $tour = Tour::find($id);
        $tour->name = $request->post('name');
        $tour->image = $request->post('image');
        $tour->description_file = $request->post('description_file');
        $tour->tour_start_date = $request->post('tour_start_date');
        $tour->tour_end_date = $request->post('tour_end_date');
        $tour->registration_start_date = $request->post('registration_start_date');
        $tour->registration_end_date = $request->post('registration_end_date');
        $tour->price = $request->post('price');
        $tour->max_people = $request->post('max_people');
        $tour->region_id = $request->post('region_id');
        $tour->save();

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Cập nhật nhân viên thành công');
    }

    public function destroy(int $id)
    {
        Tour::destroy($id);

        return redirect()
            ->route('admin.tours.index')
            ->with('message', 'Xoá nhân viên thành công');
    }
}
