<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Department\StoreDepartmentRequest;
use App\Http\Requests\Admin\Department\UpdateDepartmentRequest;
use App\Models\Department;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;

class DepartmentController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.pages.departments.index');
    }

    public function datatableApi()
    {
        $departments = Department::orderBy('id', 'DESC')->get();;
        return DataTables::of($departments)
            ->addIndexColumn()
            ->addColumn('action', function (Department $department) {
                return $department->id;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function show()
    {
        return redirect()->route('admin.departments.index');
    }


    public function create()
    {
        return view('admin.pages.departments.create');
    }

    public function store(StoreDepartmentRequest $request)
    {
        Department::create($request->validated());

        return redirect()->route('admin.departments.index')->with('message', 'Tạo phòng ban thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['department'] = Department::findOrFail($id);

        return view('admin.pages.departments.edit', $parameters);
    }

    public function update(UpdateDepartmentRequest $request, int $id)
    {
        Department::where('id', $id)->update($request->validated());
        return redirect()->route('admin.departments.index')->with('message', 'Cập nhật phòng ban thành công');
    }

    public function destroy(int $id)
    {
        if (User::where('department_id', $id)->exists())
        {
            return back()->withError('Không thể xoá phòng ban có tồn tại nhân viên');
        }

        Department::destroy($id);
        return redirect()->route('admin.departments.index')->with('message', 'Xoá phòng ban thành công');
    }

    public function deleteMany(Request $request)
    {
        if (User::whereIn('department_id', $request->ids)->exists())
        {
            return response()->json([
                'message' => 'Không thể xoá các phòng ban có tồn tại nhân viên'
            ], 400);
        }
        
        Department::destroy($request->ids);
        return response()->json([ 'message' => 'Xoá phòng ban thành công' ]);
    }
}
