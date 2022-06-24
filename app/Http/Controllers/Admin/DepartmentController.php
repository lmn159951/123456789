<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\DepartmentRequest;
use App\Models\Department;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;

class DepartmentController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.pages.departments.index');
    }

    public function datatableApi()
    {
        $departments = Department::all();
        return DataTables::of($departments)
            ->addIndexColumn()
            ->addColumn('action', function (Department $department) {
                return $department->id;
            })->addColumn('checkbox', function (Department $department) {
                return '
                    <label class="control control--checkbox">
                        <input type="checkbox" class="table-checkbox" name="ids[]" value="'.$department->id.'" />
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

    public function show()
    {
        return redirect()->route('admin.departments.index');
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

        $bln = DB::table('departments')->where('id', $id)->count() > 0;

        if($bln)
        {
            $parameters['agency'] = Department::find($id);

            return view('admin.pages.departments.edit', $parameters);
        }
        else
        {
            return redirect()->route('admin.departments.index');
        }
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

    public function deleteMany(Request $request)
    {
        Department::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá phòng ban thành công'
        ]);
    }
}
