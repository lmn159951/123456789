<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TrangChuController extends Controller
{
    //
    public function index()
    {
        return view('nhanvien.pages.trangchu');
    }
}
