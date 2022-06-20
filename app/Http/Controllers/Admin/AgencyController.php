<?php

namespace App\Http\Controllers\Admin;

use App\Models\Agency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\AgencyRequest;

class AgencyController extends Controller
{
    public function index()
    {
        $parameters = [];
        $parameters['agencies'] = Agency::paginate(5);

        return view('admin.pages.agencies.index', $parameters);
    }

    public function create()
    {
        return view('admin.pages.agencies.create');
    }

    public function store(AgencyRequest $request)
    {
        $agency = new Agency;
        $agency->name = $request->name;
        $agency->address = $request->address;
        $agency->save();

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Tạo đơn vị thành công');
    }

    public function edit(int $id)
    {
        $parameters = [];
        $parameters['agency'] = Agency::find($id);

        return view('admin.pages.agencies.edit', $parameters);
    }

    public function update(AgencyRequest $request, int $id)
    {
        $validated = $request->validated();

        Agency::where('id', $id)->update($validated);

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Cập nhật đơn vị thành công');
    }

    public function destroy(int $id)
    {
        Agency::destroy($id);

        return redirect()
            ->route('admin.agencies.index')
            ->with('message', 'Xoá đơn vị thành công');
    }

    public function search(Request $request)
    {
        $agencies = Agency::where('name', 'LIKE', '%'.$request->keyword.'%')->paginate(5);

        $response = '';
        foreach ($agencies as $index => $agency)
        {
            $response .= '
                <tr>
                    <th scope="row">'.($index + 1).'</th>
                    <td style="max-width: 400px;">'.$agency->name.'</td>
                    <td style="max-width: 400px;">'.$agency->address.'</td>
                    <td>
                        <div class="d-flex">
                            <a class="btn btn-warning" href="'.route("admin.agencies.edit", $agency->id).'">
                                Cập nhật
                            </a>
                            <form class="ml-3" method="post"
                                action="'.route("admin.agencies.destroy", $agency->id).'">
                                @method("DELETE") @csrf
                                <button type="submit" class="btn btn-danger"
                                    onclick="return confirm("Bạn có chắc muốn xoá đơn vị này?")">
                                    Xoá
                                </button>
                            </form>
                        </div>
                    </td>
                </tr>
            ';
        }

        return response()->json($response);
    }
}
