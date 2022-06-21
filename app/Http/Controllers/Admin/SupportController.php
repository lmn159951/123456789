<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\SupportRequest;
use App\Models\Support;

class SupportController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['supports'] = Support::Paginate(5);

        return view('admin.pages.supports.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.supports.create');
    }

    public function store(SupportRequest $request)
    {
        $support = new Support;
        $support->start_year= $request->start_year;
        $support->end_year= $request->end_year;
        $support->min_condition= $request->min_condition;
        $support->max_condition= $request->max_condition;
        $support->price= $request->price;
        $support->save();

        return redirect()
            ->route('admin.supports.index')
            ->with('message', 'Tạo hỗ trợ thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['support'] = Support::find($id);

        return view('admin.pages.supports.edit', $parameters);
    }

    public function update(SupportRequest $request, int $id)
    {
        $validated = $request->validated();

        Support::where('id', $id)->update($validated);

        return redirect()
            ->route('admin.supports.index')
            ->with('message', 'Cập nhật hỗ trợ thành công');
    }


    public function destroy(int $id)
    {
        Support::destroy($id);

        return redirect()
            ->route('admin.supports.index')
            ->with('message', 'Xoá hỗ trợ thành công');
    }
}
