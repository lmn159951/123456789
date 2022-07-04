<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Region;

class LienHeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $recordsRegions = Region::select('name')->get()->toArray();
        return view('nhanvien.pages.lienhe')->with('recordsRegions', $recordsRegions);
    }
}
