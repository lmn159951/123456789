<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Support\StoreSupportRequest;
use App\Http\Requests\Admin\Support\UpdateSupportRequest;
use App\Models\Support;
use App\Models\TourRegistration;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;

class SupportController extends Controller
{
    public function index()
    {
        // TourRegistration::where('support_id', 2)->delete();

        return view('admin.pages.supports.index');
    }

    public function datatableApi()
    {
        $supports = Support::orderBy('start_year', 'DESC')->orderBy('min_condition', 'ASC')->get();

        return Datatables::of($supports)
            ->addIndexColumn()
            ->addColumn('action', function (Support $support) {
                return $support;
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
                return (string)($support->max_condition == 100 ? '' : $support->max_condition);
            })
            ->rawColumns(['action'])
            ->make();
    }

    public function create()
    {
        $currentYear = date('Y');
        $currentSupport = Support::where('start_year', '<=', $currentYear)->where('end_year', '>=', $currentYear)->first();

        $startYear = $currentSupport->start_year ?? date('Y');
        $endYear = $currentSupport->end_year ?? date('Y');

        $parameters = [];
        $parameters['start_years'] = range($startYear, $startYear + 10);
        $parameters['end_years'] = range($endYear, $endYear + 10);

        return view('admin.pages.supports.create', $parameters);
    }

    public function store(StoreSupportRequest $request)
    {
        $support = new Support();
        $support->fill($request->validated());
        $support->min_condition = $request->min_condition ?? 0;
        $support->max_condition = $request->max_condition ?? 99;
        $support->support_id = $request->support_id;
        $support->save();

        return redirect()->route('admin.supports.index')->with('message', 'Tạo hỗ trợ thành công');
    }

    public function edit(Request $request, Support $support)
    {
        $this->authorize('update', $support);

        $currentYear = date('Y');
        $currentSupport = Support::where('start_year', '<=', $currentYear)->where('end_year', '>=', $currentYear)->first();
        $startYear = $currentSupport->start_year ?? date('Y');
        $endYear = $currentSupport->end_year ?? date('Y');

        $parameters = [];
        $parameters['support'] = $support;
        $parameters['start_years'] = range($startYear, $startYear + 10);
        $parameters['end_years'] = range($endYear, $endYear + 10);

        return view('admin.pages.supports.edit', $parameters);
    }

    public function update(UpdateSupportRequest $request, Support $support)
    {
        $support->fill($request->validated());
        $support->min_condition = $request->min_condition ?? 0;
        $support->max_condition = $request->max_condition ?? 100;
        $support->support_id = $request->support_id;
        $support->save();

        return redirect()->route('admin.supports.index')->with('message', 'Cập nhật hỗ trợ thành công');
    }


    public function destroy(Support $support)
    {
        $this->authorize('delete', $support);

        if (TourRegistration::where('support_id', $support->support_id)->exists())
        {
            return back()->withError('Không thể xoá hỗ trợ có tồn tại người nhận');
        }

        $support->delete();

        return redirect()->route('admin.supports.index')->with('message', 'Xoá hỗ trợ thành công');
    }

    public function deleteMany(Request $request)
    {
        if (Support::available()->whereIn('id', $request->ids)->doesntExist())
        {
            return response()->json([ 'message' => 'Không thể xoá hỗ trợ quá hạn' ], 400);
        }

        $supportIds = Support::whereIn('id', $request->ids)->distinct()->get(['support_id']);

        if (TourRegistration::whereIn('support_id', $supportIds)->exists())
        {
            return response()->json([ 'message' => 'Không thể xoá hỗ trợ có tồn tại người nhận' ], 400);
        }

        Support::destroy($request->ids);

        return response()->json([
            'message' => 'Xoá hỗ trợ thành công'
        ]);
    }
}
