<?php

namespace App\Http\Controllers\Admin;

use App\Models\Agency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Agency\StoreAgencyRequest;
use App\Http\Requests\Admin\Agency\UpdateAgencyRequest;
use App\Models\Department;
use App\Models\User;
use Yajra\Datatables\Datatables;

class AgencyController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.pages.agencies.index');
    }

    public function datatableApi()
    {
        $agencies = Agency::orderBy('id', 'DESC')->get();

        return DataTables::of($agencies)
            ->addIndexColumn()
            ->addColumn('name', function (Agency $agency) {
                $response = [];
                $response['name'] = $agency->name;
                $response['detailsUrl'] = route('admin.agencies.departments.index', $agency->slug);
                return $response;
            })
            ->addColumn('action', function (Agency $agency) {
                $response = [];
                $response['id'] = $agency->id;
                $response['updateUrl'] = route('admin.agencies.edit', [
                    'department' => $agency->id
                ]);
                $response['destroyUrl'] = route('admin.agencies.destroy', [
                    'department' => $agency->id
                ]);
                return $response;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function create()
    {
        return view('admin.pages.agencies.create');
    }

    public function store(StoreAgencyRequest $request)
    {
        $agency = new Agency();
        $agency->fill($request->validated());
        $agency->slug = str()->slug($request->name);
        $agency->save();

        return redirect()->route('admin.agencies.index')->with('message', 'Tạo đơn vị thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['agency'] = Agency::findOrFail($id);

        return view('admin.pages.agencies.edit', $parameters);
    }

    public function update(UpdateAgencyRequest $request, int $id)
    {
        $agency = Agency::findOrFail($id);
        $agency->fill($request->validated());
        $agency->slug = str()->slug($request->name);
        $agency->save();

        return redirect()->route('admin.agencies.index')->with('message', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $id)
    {
        if (Department::where('agency_id', $id)->exists())
        {
            return back()->withError('Vui lòng xoá hết các phòng ban có trong đơn vị này');
        }
        else
        {
            Agency::destroy($id);
            return redirect()->route('admin.agencies.index')->with('message', 'Xoá đơn vị thành công');
        }
    }
}
