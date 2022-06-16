<?php

namespace App\Http\Controllers\Admin;

use App\Models\DonVi;
use App\Http\Controllers\Controller;
use App\Http\Requests\DonViRequest;
use Illuminate\Http\Request;

class DonViController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['danhSachDonVi'] = DonVi::all();

        return view('admin.pages.donvi.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.donvi.create');
    }

    public function store(DonViRequest $request)
    {
        $donVi = new DonVi;
        $donVi->ten_don_vi = $request->ten_don_vi;
        $donVi->dia_chi = $request->dia_chi;
        $donVi->save();

        return redirect()->route('quantri.donvi.index')->with('success', 'Tạo đơn vị thành công');
    }

    public function show(int $ma_don_vi)
    {
        //
    }


    public function edit(int $ma_don_vi)
    {
        $parameters = [];
        $parameters['donVi'] = DonVi::find($ma_don_vi);

        return view('admin.pages.donvi.edit', $parameters);
    }

    public function update(DonViRequest $request, int $ma_don_vi)
    {
        $validated = $request->validated();

        DonVi::where('ma_don_vi', $ma_don_vi)->update($validated);

        return redirect()
                ->route('quantri.donvi.index')
                ->with('success', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $ma_don_vi)
    {
        DonVi::destroy($ma_don_vi);

        return redirect()
                ->route('quantri.donvi.index')
                ->with('success', 'Xoá đơn vị thành công');
    }
}
