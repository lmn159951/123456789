<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\DonViRequest;
use App\Models\DonVi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class DonViController extends Controller
{
    public function list()
    {
        $parameters = [];
        $parameters['danhSachDonVi'] = DonVi::all();

        return view('admin.pages.donvi.list', $parameters);
    }


    public function store()
    {
        return view('admin.pages.donvi.store');
    }


    public function create(DonViRequest $request)
    {
        $validated = $request->validated();

        DonVi::create($validated);

        return redirect()
                ->route('quantri.donvi.list')
                ->with('success', 'Tạo đơn vị thành công');
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

        DonVi::where('ma_don_vi', $ma_don_vi)->update([$ma_don_vi, ...$validated]);

        return redirect()
                ->route('quantri.donvi.list')
                ->with('success', 'Cập nhật đơn vị thành công');
    }


    public function delete(int $ma_don_vi)
    {
        Donvi::destroy($ma_don_vi);

        return redirect()
                ->route('quantri.donvi.list')
                ->with('success', 'Xoá đơn vị thành công');
    }
}
