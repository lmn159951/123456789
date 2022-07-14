<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Position\StorePositionRequest;
use App\Http\Requests\Admin\Position\UpdatePositionRequest;
use App\Models\Position;
use App\Models\User;
use Illuminate\Http\Request;
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

    public function store(StorePositionRequest $request)
    {
        Position::create($request->validated());
        return redirect()->route('admin.positions.index')->with('message', 'Tạo chức vụ thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['position'] = Position::findOrFail($id);

        return view('admin.pages.positions.edit', $parameters);
    }

    public function update(UpdatePositionRequest $request, int $id)
    {
        Position::where('id', $id)->update($request->validated());

        return redirect()->route('admin.positions.index')->with('message', 'Cập nhật chức vụ thành công');
    }

    public function destroy(int $id)
    {
        if (User::where('position_id', $id)->exists())
        {
            return back()->withError('Không thể xoá chức vụ có tồn tại nhân viên');
        }
        else
        {
            Position::destroy($id);
            return redirect()->route('admin.positions.index')->with('message', 'Xoá chức vụ thành công');
        }
    }

    public function deleteMany(Request $request)
    {
        if (User::whereIn('position_id', $request->ids)->exists())
        {
            return response()->json([
                'message' => 'Không thể xoá các chức vụ có tồn tại nhân viên'
            ], 400);
        }
        else
        {
            Position::destroy($request->ids);
            return response()->json([ 'message' => 'Xoá chức vụ thành công' ]);
        }
    }
}
