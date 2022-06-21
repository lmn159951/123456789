<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\DepartmentRequest;
use App\Models\Department;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    public function index(Request $request)
    {
        $parameters = [];
        $parameters['perPages'] = [5, 10, 25, 50, 100, 200, 400, 500];
        $parameters['departments'] = Department::where('name', 'LIKE', '%'.$request->name.'%')->paginate($request->get('per_page', 5));
        $request->request->add(['per_page' => $request->get('per_page', 5)]);

        return view('admin.pages.departments.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.departments.create');
    }

    public function store(DepartmentRequest $request)
    {
        $department = new Department();
        $department->name = $request->name;
        $department->save();

        return redirect()->route('admin.departments.index')->with('success', 'Tạo đơn vị thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['department'] = Department::find($id);

        return view('admin.pages.departments.edit', $parameters);
    }

    public function update(DepartmentRequest $request, int $id)
    {
        $validated = $request->validated();

        Department::where('id', $id)->update($validated);

        return redirect()
                ->route('admin.departments.index')
                ->with('success', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $id)
    {
        Department::destroy($id);

        return redirect()
                ->route('admin.departments.index')
                ->with('success', 'Xoá đơn vị thành công');
    }
}
