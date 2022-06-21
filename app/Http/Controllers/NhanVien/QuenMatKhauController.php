<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class QuenMatKhauController extends Controller
{
    //
    public function index()
    {
        return view('nhanvien.pages.quenmatkhau');
    }

    public function ForgotPassword(Request $request)
    {
        
    }
}
