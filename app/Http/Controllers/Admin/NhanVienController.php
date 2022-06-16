<?php

namespace App\Http\Controllers\Admin;

use App\Models\NhanVien;
use App\Http\Controllers\Controller;
use App\Http\Requests\NhanVienRequest;

class NhanVienController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['danhSachNhanVien'] = NhanVien::with(['phong_ban', 'chuc_vu'])->get();

        return view('admin.pages.nhanvien.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.nhanvien.create');
    }

    public function store(NhanVienRequest $request)
    {
        $nhanVien = new NhanVien;
        $nhanVien->ten_nhan_vien = $request->ten_nhan_vien;
        $nhanVien->save();

        return redirect()->route('quantri.nhanvien.index')->with('success', 'Tạo nhân viên thành công');
    }

    public function edit(int $ma_nhan_vien)
    {
        $parameters = [];
        $parameters['nhanVien'] = NhanVien::find($ma_nhan_vien);

        return view('admin.pages.nhanvien.edit', $parameters);
    }

    public function update(NhanVienRequest $request, int $ma_nhan_vien)
    {
        $validated = $request->validated();

        NhanVien::where('ma_nhan_vien', $ma_nhan_vien)->update($validated);

        return redirect()
                ->route('quantri.nhanvien.index')
                ->with('success', 'Cập nhật nhân viên thành công');
    }

    public function destroy(int $ma_nhan_vien)
    {
        NhanVien::destroy($ma_nhan_vien);

        return redirect()
                ->route('quantri.nhanvien.index')
                ->with('success', 'Xoá nhân viên thành công');
    }
}
