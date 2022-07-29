<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Position\StorePositionRequest;
use App\Http\Requests\Admin\Position\UpdatePositionRequest;
use App\Models\Department;
use App\Models\Position;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;

class PositionController extends Controller
{
    public function index(...$routeParams)
    {
        $departmentSlug = $routeParams[1];

        return view('admin.pages.positions.index', [
            'department' => Department::where('slug', $departmentSlug)->firstOrFail(),
        ]);
    }

    public function datatableApi(...$routeParams)
    {
        $departmentSlug = $routeParams[1];
        $departmentId = Department::where('slug', $departmentSlug)->value('id');
        $positions = Position::where('department_id', $departmentId)->get();

        return DataTables::of($positions)
            ->addIndexColumn()
            ->addColumn('action', function (Position $position) use ($routeParams) {
                list($agencySlug, $departmentSlug) = $routeParams;

                $response = [];
                $response['id'] = $position->id;
                $response['editUrl'] = route('admin.agencies.departments.positions.edit', [
                    'agencySlug' => $agencySlug,
                    'departmentSlug' => $departmentSlug,
                    'position' => $position->id,
                ]);
                $response['destroyUrl'] = route('admin.agencies.departments.positions.destroy', [
                    'agencySlug' => $agencySlug,
                    'departmentSlug' => $departmentSlug,
                    'position' => $position->id,
                ]);
                return $response;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function create()
    {
        return view('admin.pages.positions.create');
    }

    public function store(StorePositionRequest $request, ...$routeParams)
    {
        list($agencySlug, $departmentSlug) = $routeParams;

        $position = new Position();
        $position->fill($request->validated());
        $position->department_id = Department::where('slug', $departmentSlug)->value('id');
        $position->slug = str()->slug("{$request->name} {$position->department_id}");
        $position->save();

        return redirect()->route('admin.agencies.departments.positions.index', [
            'agencySlug' => $agencySlug,
            'departmentSlug' => $departmentSlug,
        ])->with('message', 'Tạo chức vụ thành công');
    }

    public function edit(Request $request, ...$routeParams)
    {
        $positionId = $routeParams[2];

        $parameters = [];
        $parameters['position'] = Position::findOrFail($positionId);

        return view('admin.pages.positions.edit', $parameters);
    }

    public function update(UpdatePositionRequest $request, ...$routeParams)
    {
        list($agencySlug, $departmentSlug, $positionId) = $routeParams;

        $position = Position::findOrFail($positionId);
        $position->fill($request->validated());
        $position->department_id = Department::where('slug', $departmentSlug)->value('id');
        $position->slug = str()->slug("{$request->name} {$position->department_id}");
        $position->save();

        return redirect()->route('admin.agencies.departments.positions.index', [
            'agencySlug' => $agencySlug,
            'departmentSlug' => $departmentSlug,
        ])->with('message', 'Cập nhật chức vụ thành công');
    }

    public function destroy(...$routeParams)
    {
        list($agencySlug, $departmentSlug, $positionId) = $routeParams;

        if (User::where('position_id', $positionId)->exists())
        {
            return back()->withError('Vui lòng xoá hết các nhân viên có trong chức vụ này');
        }
        else
        {
            Position::destroy($positionId);

            return redirect()->route('admin.agencies.departments.positions.index', [
                'agencySlug' => $agencySlug,
                'departmentSlug' => $departmentSlug,
            ])->with('message', 'Xoá chức vụ thành công');
        }
    }

    public function findByDepartmentId(Request $request)
    {
        $positions = Position::where('department_id', $request->department_id)->get();
        return response()->json([
            'positions' => $positions,
        ]);
    }
}
