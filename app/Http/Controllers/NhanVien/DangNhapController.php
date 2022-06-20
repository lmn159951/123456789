<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use App\Http\Requests\NhanVien\NVDangNhapRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DangNhapController extends Controller
{
    //
    public function index()
    {

        return view('nhanvien.pages.dangnhap');
    }

    public function login(NVDangNhapRequest $request)
    {
        $username = $request->post('username');
        $password = $request->post('password');

        if(Auth::guard('user')->attempt(['username' => $username, 'password' => $password, 'is_admin' => '0', 'deleted_at' => null]))
        {
            return redirect()->route('home');
        }

        if(Auth::attempt(['username' => $username, 'password' => $password, 'is_admin' => '1', 'deleted_at' => null]))
        {
            return redirect()->route('admin.dashboard');
        }

        return view('nhanvien.pages.dangnhap')->with('message', 'Tên đăng nhập hoặc mật khẩu không đúng!');
    }

    public function logout()
    {
        Auth::guard('user')->logout();
        return redirect()->route('home');
    }
}
