<?php

namespace App\Http\Controllers\Admin;

use App\Models\ChucVu;
use App\Http\Controllers\Controller;
use App\Http\Requests\ChucVuRequest;

class ChucVuController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['danhSachChucVu'] = ChucVu::all();

        return view('admin.pages.chucvu.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.chucvu.create');
    }

    public function store(ChucVuRequest $request)
    {
        $chucVu = new ChucVu;
        $chucVu->ten_chuc_vu = $request->ten_chuc_vu;
        $chucVu->save();

        return redirect()->route('quantri.chucvu.index')->with('success', 'Tạo chức vụ thành công');
    }

    public function edit(int $ma_chuc_vu)
    {
        $parameters = [];
        $parameters['chucVu'] = ChucVu::find($ma_chuc_vu);

        return view('admin.pages.chucvu.edit', $parameters);
    }

    public function update(ChucVuRequest $request, int $ma_chuc_vu)
    {
        $validated = $request->validated();

        ChucVu::where('ma_chuc_vu', $ma_chuc_vu)->update($validated);

        return redirect()
                ->route('quantri.chucvu.index')
                ->with('success', 'Cập nhật chức vụ thành công');
    }

    public function destroy(int $ma_chuc_vu)
    {
        ChucVu::destroy($ma_chuc_vu);

        return redirect()
                ->route('quantri.chucvu.index')
                ->with('success', 'Xoá chức vụ thành công');
    }
}
