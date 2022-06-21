@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center">Quản lý đơn vị</h3>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="card">
                <div class="card-header">
                    Lọc dữ liệu
                </div>
                <div class="card-body">
                    <form class="container" style="max-width: 800px;" action="{{ route('admin.agencies.index') }}"
                        method="GET">
                        <div class="row align-items-start">
                            <div class="col">
                                <div class="mb-3">
                                    <label for="name" class="form-label">Tên đơn vị:</label>
                                    <input type="text" class="form-control" value="{{ request()->query('name') }}"
                                        name="name" id="name">
                                </div>
                            </div>
                            <div class="col">
                                <div class="mb-3">
                                    <label for="address" class="form-label">Địa chỉ:</label>
                                    <input type="text" class="form-control" value="{{ request()->query('address') }}"
                                        name="address" id="address">
                                </div>
                            </div>
                        </div>

                        <div class="my-3 d-flex justify-content-end">
                            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="my-3 d-flex justify-content-between">

                <div class="form-group d-flex align-items-center col-3">
                    <label for="perPage">Số dòng trong bảng: </label>
                    <select class="form-control" id="perPage" name="perPage" onchange="location = this.value"
                        style="width: 50px;margin-left: 10px;">

                        @foreach ($perPages as $perPage)
                            <option value="{{ request()->fullUrlWithQuery(['per_page' => $perPage]) }}"
                                @selected(request()->input('per_page') == $perPage)>
                                {{ $perPage }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <a class="btn btn-primary d-flex justify-content-center align-items-center"
                    href="{{ route('admin.agencies.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-striped table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên đơn vị</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody class="table-content">
                    @foreach ($agencies as $index => $agency)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td style="max-width: 400px;">{{ $agency->name }}</td>
                            <td style="max-width: 400px;">{{ $agency->address }}</td>
                            <td>
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.agencies.edit', $agency->id) }}">
                                        Cập nhật
                                    </a>
                                    <form class="ml-3" method="post"
                                        action="{{ route('admin.agencies.destroy', $agency->id) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá đơn vị này?')">
                                            Xoá
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <div class="pagination-wrapper d-flex justify-content-between">
                <div class="text">Hiển thị {{ $agencies->firstItem() }} từ {{ $agencies->lastItem() }} trong
                    {{ $agencies->total() }} dòng</div>
                <div class="pagination">{{ $agencies->withQueryString()->links() }}</div>
            </div>
        </div>

    </div>
@endsection

@push('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'csrftoken': '{{ csrf_token() }}'
                }
            });
        });
    </script>
@endpush
