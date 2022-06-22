<?php

namespace App\Http\Controllers\Admin;

use App\Models\Agency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\AgencyRequest;
use Illuminate\Support\Facades\DB;

class AgencyController extends Controller
{
    public function index(Request $request)
    {
        $query = Agency::query();

        foreach ($request->except(['per_page', 'page']) as $attributes => $value)
        {
            $query->where($attributes, 'LIKE', '%'.$value.'%');
        }

        $parameters = [];
        $parameters['perPages'] = [5, 10, 25, 50, 100, 200, 400, 500];
        $parameters['agencies'] = $query->paginate($request->get('per_page', 5));

        return view('admin.pages.agencies.index', $parameters);
    }

    public function search(Request $request)
    {
        $parameters = array_filter($request->except(['_token', '_method']), function($param) { return isset($param); });

        return redirect()->route('admin.agencies.index', $parameters);
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

    public function deleteMany(Request $request)
    {
        echo 'deleteMany';
        die;

        Agency::findOrFail($request->ids)->delete();

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Xoá đơn vị thành công');
    }
}
