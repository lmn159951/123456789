<?php

namespace App\Http\Controllers\Admin;

use App\Models\Agency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\AgencyRequest;
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

    public function store(AgencyRequest $request)
    {
        $agency = new Agency;
        $agency->name = $request->name;
        $agency->address = $request->address;
        $agency->save();

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Tạo đơn vị thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];

        $bln = DB::table('agencies')->where('id', $id)->count() > 0;

        if($bln)
        {
            $parameters['agency'] = Agency::find($id);

            return view('admin.pages.agencies.edit', $parameters);
        }
        else
        {
            return redirect()->route('admin.agencies.index');
        }
    }

    public function show()
    {
        return redirect()->route('admin.agencies.index');
    }

    public function update(AgencyRequest $request, int $id)
    {
        Agency::where('id', $id)->update($request->validated());

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $id)
    {
        Agency::destroy($id);

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Xoá đơn vị thành công');
    }

    public function deleteMany(Request $request)
    {
        Agency::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá đơn vị thành công'
        ]);
    }
}
