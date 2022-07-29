<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\NhanVien\TtcnRequest;
use App\Models\User;


class NVNhanVienController extends Controller
{
    public function index()
    {
        $ttcn = User::query()
            ->selectRaw('users.*, positions.name as position_name, departments.name as department_name, agencies.name as agency_name,
                positions.id as position_id, departments.id as department_id, agencies.id as agency_id')
            ->join('positions', 'positions.id', '=', 'users.position_id')
            ->join('departments', 'departments.id', '=', 'positions.department_id')
            ->join('agencies', 'agencies.id', '=', 'departments.agency_id')
            ->where('users.id', Auth::user()->id)
            ->orderBy('users.id', 'DESC')
            ->firstOrFail();

        return view('nhanvien.pages.thongtincanhan')->with('ttcn', $ttcn);
    }

    public function edit(TtcnRequest $request)
    {
        $validated = $request->validated();
        User::where('id', Auth::user()->id)->update($validated);
        return redirect()->route('nhanvien.thong-tin-ca-nhan.index')->with('message', 'Lưu thông tin thành công');
    }
}
