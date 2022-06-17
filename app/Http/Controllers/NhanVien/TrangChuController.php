<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Region;

class TrangChuController extends Controller
{
    //
    public function index()
    {
        $recordsRegions = Region::select('name')->get()->toArray();
        return view('nhanvien.pages.trangchu')->with('recordsRegions', $recordsRegions);
    }
}
