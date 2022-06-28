<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\SupportRequest;
use App\Models\Support;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SupportController extends Controller
{
    public function index()
    {
        return view('admin.pages.supports.index');
    }

    public function datatableApi()
    {
        $supports = Support::orderBy('start_year', 'ASC')->orderBy('min_condition', 'ASC')->get();

        return Datatables::of($supports)
            ->addIndexColumn()
            ->addColumn('action', function (Support $support) {
                return $support->id;
            })
            ->editColumn('price', function (Support $support) {
                return currency_format($support->price, $separator = ',', $suffix = '₫');
            })
            ->editColumn('start_year', function (Support $support) {
                return (string)$support->start_year;
            })
            ->editColumn('end_year', function (Support $support) {
                return (string)$support->end_year;
            })
            ->editColumn('min_condition', function (Support $support) {
                return (string)$support->min_condition;
            })
            ->editColumn('max_condition', function (Support $support) {
                return (string)$support->max_condition;
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function show()
    {
        return redirect()->route('admin.supports.index');
    }

    public function create()
    {
        $currentYear = date('Y');
        $currentSupport = Support::where('start_year', '<=', $currentYear)->where('end_year', '>=', $currentYear)->first();

        $parameters = [];
        $parameters['start_years'] = range($currentSupport->start_year, $currentSupport->start_year + 10);
        $parameters['end_years'] = range($currentSupport->end_year, $currentSupport->end_year + 10);

        return view('admin.pages.supports.create', $parameters);
    }

    public function store(SupportRequest $request)
    {
        $isExistedSupport = Support::where('start_year', $request->start_year)->where('end_year', $request->end_year);

        if ($isExistedSupport->exists())
        {

            foreach ($isExistedSupport->get() as $key => $supportDetails)
            {
                $minCondition = $supportDetails->min_condition ?? 0;
                $maxCondition = $supportDetails->max_condition ?? 100;

                $condition = range($minCondition, $maxCondition - 1);
                $inputCondition = range($request->min_condition, $request->max_condition - 1);

                if (array_intersect($condition, $inputCondition))
                {
                    return redirect()->back()->withInput()->with('message', 'Điều kiện tối thiểu hoặc điều kiện tối đa không hợp lệ!');
                }
            }

            $request->merge(['support_id' => $isExistedSupport->first()->support_id]);
        }
        else
        {
            $currentYear = date('Y');
            $currentSupports = Support::where('start_year', '<=', $currentYear)->where('end_year', '>=', $currentYear);

            foreach ($currentSupports->get() as $key => $supportDetails)
            {
                $condition = range($supportDetails->start_year, $supportDetails->end_year);
                $inputCondition = range($request->min_condition, $request->max_condition);

                if (array_intersect($condition, $inputCondition))
                {
                    return redirect()->back()->withInput()->with('message', 'Năm bắt đầu và năm kết thúc không hợp lệ!');
                }
            }

            $request->merge(['support_id' => Support::max('support_id') + 1]);
        }

        $support = new Support();
        $support->fill($request->validated());
        $support->support_id = $request->support_id;
        $support->save();

        return redirect()->route('admin.supports.index')->with('message', 'Tạo hỗ trợ thành công');
    }

    public function edit(int $id)
    {
        $currentYear = date('Y');
        $currentSupport = Support::where('start_year', '<=', $currentYear)->where('end_year', '>=', $currentYear)->first();
        
        $parameters = [];
        $parameters['support'] = Support::find($id);
        $parameters['start_years'] = range($currentSupport->start_year, $currentSupport->start_year + 10);
        $parameters['end_years'] = range($currentSupport->end_year, $currentSupport->end_year + 10);

        return view('admin.pages.supports.edit', $parameters);
    }

    public function update(SupportRequest $request, int $id)
    {
        Support::where('id', $id)->update($request->validated());

        return redirect()->route('admin.supports.index')->with('message', 'Cập nhật hỗ trợ thành công');
    }


    public function destroy(int $id)
    {
        Support::destroy($id);

        return redirect()->route('admin.supports.index')->with('message', 'Xoá hỗ trợ thành công');
    }

    public function deleteMany(Request $request)
    {
        Support::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá hỗ trợ thành công'
        ]);
    }
}
