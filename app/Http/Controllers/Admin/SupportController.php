<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\SupportRequest;
use App\Models\Support;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;

class SupportController extends Controller
{
    public function index()
    {
        return view('admin.pages.supports.index');
    }

    public function datatableApi()
    {
        $supports = Support::all();

        return Datatables::of($supports)
            ->addIndexColumn()
            ->addColumn('action', function (Support $support) {
                return $support->id;
            })->addColumn('checkbox', function (Support $support) {
                return '
                    <label class="control control--checkbox">
                        <input type="checkbox" class="table-checkbox" name="ids[]" value="'.$support->id.'" />
                        <div class="control__indicator"></div>
                    </label>
                ';
            })
            ->rawColumns(['action', 'checkbox'])
            ->make();
    }

    public function search(Request $request)
    {
        $parameters = array_filter($request->except(['_token', '_method']), function($param) { return isset($param); });

        return redirect()->route('admin.supports.index', $parameters);
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

    public function deleteMany(Request $request)
    {
        Support::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá hỗ trợ thành công'
        ]);
    }
}
