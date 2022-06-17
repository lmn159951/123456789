<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DangNhapController extends Controller
{
    //
    public function index()
    {
        return view('nhanvien.dangnhap');
    }

    public function dangnhap(Request $request)
    {
        $MaNV = $request->post('username');
        $Password = $request->post('password');
        if(Auth::attempt(['ten_tai_khoan' => $MaNV, 'password' => $Password, 'la_quan_tri' => '0']))
        {
            return redirect()->route('trangchu');
        }
    }
}
