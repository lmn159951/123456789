<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Position;
use App\Http\Requests\Admin\PositionRequest;
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
        $positions = Position::all();
        return DataTables::of($positions)
            ->addIndexColumn()
            ->addColumn('action', function (Position $position) {
                return $position->id;
            })->addColumn('checkbox', function (Position $position) {
                return '
                    <label class="control control--checkbox">
                        <input type="checkbox" class="table-checkbox" name="ids[]" value="'.$position->id.'" />
                        <div class="control__indicator"></div>
                    </label>
                ';
            })
            ->rawColumns(['action', 'checkbox'])
            ->make();
    }

    public function search(Request $request)
    {
        $parameters = array_filter($request->except(['_token', '_method']), function($param) { return isset($param); });

        return redirect()->route('admin.agencies.index', $parameters);
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
        $parameters['positions'] = Position::find($id);

        return view('admin.pages.positions.edit', $parameters);
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
