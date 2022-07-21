<?php

namespace App\Http\Controllers\Admin;

use App\Models\Tour;
use App\Models\Agency;
use App\Models\Region;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\Http\Controllers\Controller;

use App\Http\Requests\Admin\Tour\StoreTourRequest;
use App\Http\Requests\Admin\Tour\UpdateTourRequest;
use App\Models\TourRegistration;

class TourController extends Controller
{
    public function index()
    {
        return view('admin.pages.tours.index');
    }

    public function datatableApi()
    {
        $registeredTours = Tour::with('region')->select('*')->selectSub('0', 'active')->registered();
        $availableTours = Tour::with('region')->select('*')->selectSub('1', 'active')->available();
        $tours = $availableTours->union($registeredTours)->orderBy('id', 'DESC')->orderBy('registration_start_date', 'DESC')->get();

        return Datatables::of($tours)
            ->addIndexColumn()
            ->addColumn('action', function (Tour $tour) {
                return $tour;
            })
            ->editColumn('price', function (Tour $tour) {
                return currency_format($tour->price, $separator = ',', $suffix = '₫');
            })
            ->editColumn('max_people', function (Tour $tour) {
                $slot = Tour::Slot($tour->id);

                return (string)$slot.'/'.(string)$tour->max_people;
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

    public function store(StoreTourRequest $request)
    {


        $tour = new Tour();
        $tour->fill($request->validated());

        if($request->hasFile('file_image'))
        {
            $tourImageName = time().'.'.$request->file('file_image')->getClientOriginalExtension();
            $tourImagePath = $request->file('file_image')->storeAs('images', $tourImageName, 'public');
            $tour->image = 'storage/'.$tourImagePath;
        }

        if($request->hasFile('file_description'))
        {
            $tourFileDescriptionName = time().'.'.$request->file('file_description')->getClientOriginalExtension();
            $tourFileDescriptionPath = $request->file('file_description')->storeAs('files', $tourFileDescriptionName, 'public');
            $tour->description_file = 'storage/'.$tourFileDescriptionPath;
        }

        $tour->save();

        $agency_ids = array_map('intval', explode(',', $request->agency_ids[0]));
        $tour->agencies()->attach($agency_ids);
        $tour->save();

        return redirect()->route('admin.tours.index')->with('message', 'Tạo tour thành công');
    }

    public function edit(Tour $tour)
    {
        $this->authorize('update', $tour);

        $parameters = [];
        $parameters['tour'] = $tour->load('agencies');
        $parameters['regions'] = Region::all();
        $parameters['agencies'] = Agency::all();
        $parameters['agency_ids'] = $parameters['tour']->agencies()->get()->pluck('id')->toArray();

        return view('admin.pages.tours.edit', $parameters);

    }

    public function update(UpdateTourRequest $request, Tour $tour)
    {
        $tour->fill($request->validated());

        if($request->hasFile('file_image'))
        {
            $tourImageName = time().'.'.$request->file('file_image')->getClientOriginalExtension();
            $tourImagePath = $request->file('file_image')->storeAs('images', $tourImageName, 'public');
            $tour->image= 'storage/'.$tourImagePath;
        }

        if($request->hasFile('file_description'))
        {
            $tourFileDescriptionName = time().'.'.$request->file('file_description')->getClientOriginalExtension();
            $tourFileDescriptionPath = $request->file('file_description')->storeAs('files', $tourFileDescriptionName, 'public');
            $tour->description_file = 'storage/'.$tourFileDescriptionPath;
        }

        $tour->save();

        $agency_ids = array_map('intval', explode(',', $request->agency_ids[0]));
        $tour->agencies()->sync($agency_ids);
        $tour->save();

        return redirect()->route('admin.tours.index')->with('message', 'Cập nhật tour thành công');
    }

    public function show(int $id)
    {
        $parameters['tour'] = Tour::with(['region'])->findOrFail($id);

        return view('admin.pages.tours.show', $parameters);
    }

    public function showFileDescription(int $id)
    {
        $parameters = [];
        $parameters['tour'] = Tour::findOrFail($id);

        return view('admin.pages.tours.showFileDescription', $parameters);
    }

    public function destroy(Tour $tour)
    {
        if ($tour->isRegisteredTour())
        {
            return back()->withError('Không thể xoá tour có tồn tại nhân viên đăng ký');
        }
        else
        {
            $tour->delete();
            return redirect()->route('admin.tours.index')->with('message', 'Xoá tour thành công');
        }
    }

    public function deleteMany(Request $request)
    {
        if (TourRegistration::whereIn('tour_id', $request->ids)->exists())
        {
            return response()->json([
                'message' => 'Không thể xoá các tour có tồn tại nhân viên đăng ký'
            ], 400);
        }
        else
        {
            Tour::destroy($request->ids);

            return response()->json(['message' => 'Xoá tour thành công']);
        }
    }
    public function download(int $id)
    {
        $tour = Tour::find($id);

		return response()->download(public_path($tour->description_file));
    }
}
