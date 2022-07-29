<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Agency;
use App\Models\Position;
use App\Models\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\User\StoreUserRequest;
use App\Http\Requests\Admin\User\UpdateUserRequest;
use Illuminate\Support\Facades\Hash;
use Yajra\Datatables\Datatables;

class UserController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax())
        {
            $query = User::query()
                ->selectRaw('users.*, positions.name as position, departments.name as department, agencies.name as agency,
                    positions.id as positionId, departments.id as departmentId, agencies.id as agencyId')
                ->join('positions', 'positions.id', '=', 'users.position_id')
                ->join('departments', 'departments.id', '=', 'positions.department_id')
                ->join('agencies', 'agencies.id', '=', 'departments.agency_id')
                ->orderBy('users.id', 'DESC');

            if (!empty($request->get('agency_id')))
            {
                $query->where('users.agency_id', $request->get('agency_id'));
            }

            if (!empty($request->get('department_id')))
            {
                $query->where('users.department_id', $request->get('department_id'));
            }

            if (!empty($request->get('position_id')))
            {
                $query->where('users.position_id', $request->get('position_id'));
            }

            $query = $query->get();

            return Datatables::of($query)
                ->addIndexColumn()
                ->addColumn('action', function (User $user) {
                    return $user->id;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        $parameters = [];
        $parameters['agencies'] = Agency::all();
        $parameters['departments'] = [];
        $parameters['positions'] = [];
        return view('admin.pages.users.index', $parameters);
    }

    public function search(Request $request)
    {
        $filters = array_filter($request->only('agency_id', 'department_id', 'position_id'), function ($filter) { return isset($filter); });

        return redirect()->route('admin.users.index', $filters);
    }

    public function create()
    {
        $parameters = [];
        $parameters['agencies'] = Agency::all();
        $parameters['departments'] = [];
        $parameters['positions'] = [];

        return view('admin.pages.users.create', $parameters);
    }

    public function store(StoreUserRequest $request)
    {
        $user = new User();
        $user->fill($request->validated());
        $user->password = Hash::make($request->post('password'));
        $user->save();

        return redirect()->route('admin.users.index')->with('message', 'Tạo nhân viên thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['user'] = User::query()
            ->selectRaw('users.*, positions.id as position_id, departments.id as department_id, agencies.id as agency_id')
            ->join('positions', 'positions.id', '=', 'users.position_id')
            ->join('departments', 'departments.id', '=', 'positions.department_id')
            ->join('agencies', 'agencies.id', '=', 'departments.agency_id')
            ->where('users.id', $id)->orderBy('users.id', 'DESC')
            ->firstOrFail();

        $parameters['positions'] = Position::where('id', $parameters['user']->position_id)->get();
        $parameters['departments'] = Department::where('id', $parameters['user']->department_id)->get();
        $parameters['agencies'] = Agency::all();

        return view('admin.pages.users.edit', $parameters);
    }

    public function show(int $id)
    {
        $parameters = [];
        $parameters['user'] = User::query()
        ->selectRaw('fullname, username, email, gender, birthday, phone, citizen_card, start_date, is_admin,
        positions.name as position, departments.name as department, agencies.name as agency')
        ->join('positions', 'positions.id', '=', 'users.position_id')
        ->join('departments', 'departments.id', '=', 'positions.department_id')
        ->join('agencies', 'agencies.id', '=', 'departments.agency_id')
        ->where('users.id', $id)
        ->firstOrFail();

        return view('admin.pages.users.show', $parameters);
    }

    public function update(UpdateUserRequest $request, int $id)
    {
        $user = User::find($id);
        $user->fill($request->validated());
        $user->save();

        return redirect()->route('admin.users.index')->with('message', 'Cập nhật nhân viên thành công');
    }

    public function destroy(int $id)
    {
        if ($id === auth()->id())
        {
            return redirect()->route('admin.users.index')->with('error', 'Không thể xoá chính tài khoản của mình!');
        }

        User::destroy($id);

        return redirect()->route('admin.users.index')->with('message', 'Xoá nhân viên thành công');
    }

    public function deleteMany(Request $request)
    {
        if (in_array(auth()->id(), $request->ids))
        {
            return response()->json([ 'message' => 'Không thể xoá chính tài khoản của mình' ], 400);
        }

        User::destroy($request->ids);

        return response()->json([ 'message' => 'Xoá nhân viên thành công' ]);
    }

    public function resetPassword(int $id)
    {
        $user = User::find($id);
        $user->password = Hash::make(1);
        $user->save();

        return redirect()->route('admin.users.index')->with('message', 'Đặt lại mật khẩu nhân viên thành công');
    }
}
