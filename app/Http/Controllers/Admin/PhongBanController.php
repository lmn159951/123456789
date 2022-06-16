<?php

namespace App\Http\Controllers\Admin;

use App\Models\PhongBan;
use App\Http\Controllers\Controller;
use App\Http\Requests\PhongBanRequest;

class PhongBanController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['danhSachPhongBan'] = PhongBan::all();

        return view('admin.pages.phongban.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.phongban.create');
    }

    public function store(PhongBanRequest $request)
    {
        $phongBan = new PhongBan;
        $phongBan->ten_phong_ban = $request->ten_phong_ban;
        $phongBan->save();

        return redirect()->route('quantri.phongban.index')->with('success', 'Tạo đơn vị thành công');
    }

    public function edit(int $ma_phong_ban)
    {
        $parameters = [];
        $parameters['phongBan'] = PhongBan::find($ma_phong_ban);

        return view('admin.pages.phongban.edit', $parameters);
    }

    public function update(PhongBanRequest $request, int $ma_phong_ban)
    {
        $validated = $request->validated();

        PhongBan::where('ma_phong_ban', $ma_phong_ban)->update($validated);

        return redirect()
                ->route('quantri.phongban.index')
                ->with('success', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $ma_phong_ban)
    {
        PhongBan::destroy($ma_phong_ban);

        return redirect()
                ->route('quantri.phongban.index')
                ->with('success', 'Xoá đơn vị thành công');
    }
}
