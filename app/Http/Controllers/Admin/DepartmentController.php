<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Agency;
use ReflectionFunction;
use App\Models\Department;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Department\StoreDepartmentRequest;
use App\Http\Requests\Admin\Department\UpdateDepartmentRequest;
use App\Models\Position;

class DepartmentController extends Controller
{
    public function index(Request $request, string $agencySlug)
    {
        return view('admin.pages.departments.index', [
            'agency' => Agency::where('slug', $agencySlug)->firstOrFail()
        ]);
    }

    public function datatableApi(string $agencySlug)
    {
        $agency = Agency::where('slug', $agencySlug)->firstOrFail();

        $departments = Department::where('agency_id', $agency->id)->orderBy('id', 'DESC')->get();;

        return DataTables::of($departments)
            ->addIndexColumn()
            ->addColumn('name', function (Department $department) use ($agencySlug) {
                $response = [];
                $response['name'] = $department->name;
                $response['detailsUrl'] = route('admin.agencies.departments.positions.index', [
                    'agencySlug' => $agencySlug,
                    'departmentSlug' => $department->slug
                ]);
                return $response;
            })
            ->addColumn('action', function (Department $department) use ($agencySlug) {
                $response = [];
                $response['id'] = $department->id;
                $response['destroyUrl'] = route('admin.agencies.departments.destroy', [
                    'agencySlug' => $agencySlug,
                    'department' => $department->id
                ]);
                $response['editUrl'] = route('admin.agencies.departments.edit', [
                    'agencySlug' => $agencySlug,
                    'department' => $department->id
                ]);
                return $response;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function create()
    {
        return view('admin.pages.departments.create');
    }

    public function store(StoreDepartmentRequest $request, string $agencySlug)
    {
        $department = new Department();
        $department->fill($request->validated());
        $department->agency_id = Agency::where('slug', $agencySlug)->value('id');
        $department->slug = str()->slug("{$request->name} {$department->agency_id}");
        $department->save();

        return redirect()->route('admin.agencies.departments.index', [
            'agencySlug' => $agencySlug
        ])->with('message', 'Tạo phòng ban thành công');
    }

    public function edit(string $agencySlug, int $id)
    {
        $parameters = [];
        $parameters['department'] = Department::findOrFail($id);

        return view('admin.pages.departments.edit', $parameters);
    }

    public function update(UpdateDepartmentRequest $request, string $agencySlug, int $id)
    {
        $department = Department::findOrFail($id);
        $department->fill($request->validated());
        $department->slug = str()->slug($request->name.' '.$department->agency_id);
        $department->agency_id = Agency::where('slug', $agencySlug)->value('id');
        $department->save();

        return redirect()->route('admin.agencies.departments.index', [
            'agencySlug' => $agencySlug
        ])->with('message', 'Cập nhật phòng ban thành công');
    }

    public function destroy(string $agencySlug, int $id)
    {
        if (Position::where('department_id', $id)->exists())
        {
            return back()->withError('Vui lòng xoá hết các chức vụ có trong phòng ban này');
        }
        else
        {
            Department::destroy($id);

            return redirect()->route('admin.agencies.departments.index', [
                'agencySlug' => $agencySlug
            ])->with('message', 'Xoá phòng ban thành công');
        }
    }

    public function findByAgencyId(Request $request)
    {
        $departments = Department::where('agency_id', $request->agencyId)->get();
        return response()->json([
            'departments' => $departments,
        ]);
    }
}
