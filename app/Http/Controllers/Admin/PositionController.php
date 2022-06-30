<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Position;
use App\Http\Requests\Admin\PositionRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;

class PositionController extends Controller
{
    public function index()
    {
        return view('admin.pages.positions.index');
    }

    public function datatableApi()
    {
        $positions = Position::orderBy('id', 'DESC')->get();;
        return DataTables::of($positions)
            ->addIndexColumn()
            ->addColumn('action', function (Position $position) {
                return $position->id;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function show()
    {
        return redirect()->route('admin.positions.index');
    }

    public function create()
    {
        return view('admin.pages.positions.create');
    }

    public function store(PositionRequest $request)
    {
        $position = new Position;
        $position->name = $request->name;
        $position->save();

        return redirect()
            ->route('admin.positions.index')
            ->with('success', 'Tạo chức vụ thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];

        $bln = DB::table('positions')->where('id', $id)->count() > 0;

        if($bln)
        {
            $parameters['positions'] = Position::find($id);

            return view('admin.pages.positions.edit', $parameters);
        }
        else
        {
            return redirect()->route('admin.positions.index');
        }
    }

    public function update(PositionRequest $request, int $id)
    {
        $validated = $request->validated();

        Position::where('id', $id)->update($validated);

        return redirect()
            ->route('admin.positions.index')
            ->with('success', 'Cập nhật chức vụ thành công');
    }

    public function destroy(int $id)
    {
        Position::destroy($id);

        return redirect()
            ->route('admin.positions.index')
            ->with('success', 'Xoá chức vụ thành công');
    }

    public function deleteMany(Request $request)
    {
        Position::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá chức vụ thành công'
        ]);
    }
}
