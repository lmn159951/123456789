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
        return view('admin.pages.users.index');
    }

    public function datatableApi()
    {
        $users = User::with(['department', 'position'])->get();

        return Datatables::of($users)
            ->addIndexColumn()
            ->addColumn('action', function (User $user) {
                return $user->id;
            })
            ->addColumn('checkbox', function (User $user) {
                return '
                    <label class="control control--checkbox">
                        <input type="checkbox" class="table-checkbox" name="ids[]" value="'.$user->id.'" />
                        <div class="control__indicator"></div>
                    </label>
                ';
            })
            ->rawColumns(['action', 'checkbox'])
            ->make(true);
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

        $bln = DB::table('users')->where('id', $id)->count() > 0;

        if($bln)
        {
            $parameters['agencies'] = Agency::all();
            $parameters['departments'] = Department::all();
            $parameters['positions'] = Position::all();
            $parameters['user'] = User::find($id);

            return view('admin.pages.users.edit', $parameters);
        }
        else
        {
            return redirect()->route('admin.users.index');
        }
    }

    public function show(int $id)
    {
        $parameters = [];

        $bln = DB::table('users')->where('id',$id)->count() > 0;
        
        if($bln)
        {
            $parameters['user'] = User::find($id)->with(['agency', 'department', 'position'])->first();

            return view('admin.pages.users.show', $parameters);
        }
        else
        {
            return redirect()->route('admin.users.index');
        }
        
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
        User::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá nhân viên thành công'
        ]);
    }
}
