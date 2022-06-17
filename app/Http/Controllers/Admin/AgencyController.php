<?php

namespace App\Http\Controllers\Admin;

use App\Models\Agency;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\AgencyRequest;

class AgencyController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['agencies'] = Agency::all();

        return view('admin.pages.agencies.index', $parameters);
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
        $parameters['agency'] = Agency::find($id);

        return view('admin.pages.agencies.edit', $parameters);
    }

    public function update(AgencyRequest $request, int $id)
    {
        $validated = $request->validated();

        Agency::where('id', $id)->update($validated);

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
}
