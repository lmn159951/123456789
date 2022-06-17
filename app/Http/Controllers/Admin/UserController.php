<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UserRequest;
use App\Models\Agency;
use App\Models\Department;
use App\Models\Position;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['users'] = User::with(['agency', 'department', 'position'])->paginate(5);

        return view('admin.pages.users.index', $parameters);
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
            ->with('success', 'Tạo đơn vị thành công');
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

    public function update(UserRequest $request, int $id)
    {
        $validated = $request->validated();

        User::where('id', $id)->update($validated);

        return redirect()
            ->route('admin.users.index')
            ->with('success', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $id)
    {
        User::destroy($id);

        return redirect()
            ->route('admin.users.index')
            ->with('success', 'Xoá đơn vị thành công');
    }
}
