<?php

namespace App\Http\Controllers\Admin;

use App\Models\Agency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Agency\StoreAgencyRequest;
use App\Http\Requests\Admin\Agency\UpdateAgencyRequest;
use App\Http\Requests\Admin\AgencyRequest;
use App\Http\Requests\DeleteAgencyRequest;
use App\Models\User;
use Illuminate\Support\Facades\DB;
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
            ->addColumn('action', function (Agency $agency) {
                return $agency->id;
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
        Agency::create($request->validated());

        return redirect()->route('admin.agencies.index')->with('message', 'Tạo đơn vị thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['agency'] = Agency::findOrFail($id);

        return view('admin.pages.agencies.edit', $parameters);
    }

    public function show()
    {
        return redirect()->route('admin.agencies.index');
    }

    public function update(UpdateAgencyRequest $request, int $id)
    {
        Agency::where('id', $id)->update($request->validated());

        return redirect()->route('admin.agencies.index')->with('message', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $id)
    {
        if (User::where('agency_id', $id)->exists())
        {
            return back()->withError('Không thể xoá đơn vị có tồn tại nhân viên');
        }
        else
        {
            Agency::destroy($id);
            return redirect()->route('admin.agencies.index')->with('message', 'Xoá đơn vị thành công');
        }
    }

    public function deleteMany(Request $request)
    {
        if (User::whereIn('agency_id', $request->ids)->exists())
        {
            return response()->json([
                'message' => 'Không thể xoá các đơn vị có tồn tại nhân viên'
            ], 400);
        }
        else
        {
            Agency::destroy($request->ids);
            return response()->json([ 'message' => 'Xoá đơn vị thành công' ]);
        }
    }
}
