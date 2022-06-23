<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Agency;
use App\Models\Position;
use App\Models\Department;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\Admin\UserRequest;
use Yajra\Datatables\Datatables;

class UserController extends Controller
{
    public function index(Request $request)
    {
        // DB::enableQueryLog();
        // $queryParameters = collect($request->except(['per_page', 'page']));

        // $query = User::query();

        // foreach ($queryParameters->only(['fullname', 'email', 'phone', 'citizen_card']) as $field => $value)
        // {
        //     $query->where($field, 'LIKE', '%'.$value.'%');
        // }

        // foreach ($queryParameters->only(['gender', 'agency_id', 'department_id', 'position_id', 'is_admin']) as $field => $value)
        // {
        //     $query->where($field, $value);
        // }

        // $now = date('Y-m-d');
        // foreach ($queryParameters->only(['start_date']) as $field => $value)
        // {
        //     $query->whereBetween($field, [$value, $now]);
        // }

        // $parameters = [];
        // $parameters['perPages'] = [5, 10, 25, 50, 100, 200, 400, 500];
        // $parameters['users'] = $query->with(['agency', 'department', 'position'])->paginate($request->get('per_page', 5));
        // $parameters['agencies'] = Agency::all();
        // $parameters['departments'] = Department::all();
        // $parameters['positions'] = Position::all();

        // dd(DB::getQueryLog());

        return view('admin.pages.users.index');
    }

    public function datatableApi()
    {
        $users = User::with(['department', 'position'])->get();

        return Datatables::of($users)
            ->addColumn('action', function (User $user) {
                return $user->id;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function search(Request $request)
    {
        $parameters = array_filter($request->except(['_token', '_method']), function($param) { return isset($param); });

        return redirect()->route('admin.users.index', $parameters);
    }

    public function create()
    {
        $parameters = [];
        $parameters['agencies'] = Agency::all();
        $parameters['departments'] = Department::all();
        $parameters['positions'] = Position::all();

        return view('admin.pages.users.create', $parameters);
    }

    public function store(UserRequest $request)
    {
        $user = new User;
        $user->fullname = $request->post('fullname');
        $user->username = $request->post('username');
        $user->password = Hash::make($request->post('password'));
        $user->email = $request->post('email');
        $user->phone = $request->post('phone');
        $user->gender = $request->post('gender');
        $user->citizen_card = $request->post('citizen_card');
        $user->agency_id = $request->post('agency_id');
        $user->department_id = $request->post('department_id');
        $user->position_id = $request->post('position_id');
        $user->start_date = $request->post('start_date');
        $user->is_admin = $request->post('is_admin');
        $user->save();

        return redirect()
            ->route('admin.users.index')
            ->with('message', 'Tạo nhân viên thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['agencies'] = Agency::all();
        $parameters['departments'] = Department::all();
        $parameters['positions'] = Position::all();
        $parameters['user'] = User::find($id);

        return view('admin.pages.users.edit', $parameters);
    }

    public function show(int $id)
    {
        $parameters = [];
        $parameters['user'] = User::with(['agency', 'department', 'position'])->find($id);

        return view('admin.pages.users.show', $parameters);
    }

    public function update(UserRequest $request, int $id)
    {
        $user = User::find($id);
        $user->fullname = $request->fullname;
        $user->username = $request->username;
        $user->password = Hash::make($request->password);
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->gender = $request->gender;
        $user->citizen_card = $request->citizen_card;
        $user->agency_id = $request->agency_id;
        $user->department_id = $request->department_id;
        $user->position_id = $request->position_id;
        $user->start_date = $request->start_date;
        $user->is_admin = $request->is_admin;
        $user->save();

        return redirect()
            ->route('admin.users.index')
            ->with('message', 'Cập nhật nhân viên thành công');
    }

    public function destroy(int $id)
    {
        User::destroy($id);

        return redirect()
            ->route('admin.users.index')
            ->with('message', 'Xoá nhân viên thành công');
    }

    public function deleteMany(Request $request)
    {
        Agency::destroy($request->ids);

        return redirect()->route('admin.users.index');
    }
}
