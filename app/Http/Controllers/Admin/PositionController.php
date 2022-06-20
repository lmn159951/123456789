<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Position;
use App\Http\Requests\Admin\PositionRequest;
use Illuminate\Http\Request;

class PositionController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['positions'] = Position::paginate(5);

        return view('admin.pages.positions.index', $parameters);
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
}
