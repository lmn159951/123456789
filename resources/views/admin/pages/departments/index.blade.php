@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 rounded">
            <h3 class="text-center">Quản lý phòng ban</h3>

            @if (session('success'))
                <div class="alert alert-success text-center">
                    {{ session('success') }}
                </div>
            @endif

            <div class="card">
                <div class="card-header">
                    Lọc dữ liệu
                </div>
                <div class="card-body">
                    <form class="container" style="max-width: 800px;" action="{{ route('admin.departments.index') }}"
                        method="GET">
                        <div class="row align-items-start">
                            <div class="col">
                                <div class="mb-3">
                                    <label for="name" class="form-label">Tên phòng ban:</label>
                                    <input type="text" class="form-control" value="{{ request()->query('name') }}"
                                        name="name" id="name">
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
                    href="{{ route('admin.departments.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên phòng ban</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($departments as $index => $department)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $department->name }}</td>
                            <td>
                                <div class="d-flex">
                                    <a class="btn btn-warning"
                                        href="{{ route('admin.departments.edit', $department->id) }}">
                                        Cập nhật
                                    </a>
                                    <form class="ml-3" method="post"
                                        action="{{ route('admin.departments.destroy', $department->id) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá phòng ban này?')">
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
                <div class="text">Hiển thị {{ $departments->firstItem() }} từ {{ $departments->lastItem() }} trong
                    {{ $departments->total() }} số nhân viên</div>
                <div class="pagination">{{ $departments->links() }}</div>
            </div>
        </div>

    </div>
@endsection
