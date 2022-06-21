@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center">Quản lý nhân viên</h3>

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
                    <form class="container" action="{{ route('admin.users.index') }}" method="GET">

                        <div class="row g-3">
                            <div class="col">
                                <label for="fullname" class="form-label">Tên nhân viên:</label>
                                <input type="text" class="form-control" name="fullname"
                                    value="{{ request()->query('fullname') }}">
                            </div>
                            <div class="col">
                                <label for="email" class="form-label">Email:</label>
                                <input type="text" class="form-control" name="email"
                                    value="{{ request()->query('email') }}">
                            </div>
                        </div>

                        <div class="row g-3 mt-2">
                            <div class="col">
                                <label for="phone" class="form-label">Phone:</label>
                                <input type="text" class="form-control" name="phone"
                                    value="{{ request()->query('phone') }}">
                            </div>
                            <div class="col">
                                <label for="gender" class="form-label">Giới tính:</label>
                                <select id="gender" class="form-select" name="gender">
                                    <option value="" @selected(request()->query('gender') == '')>--------------Không
                                        chọn--------------</option>
                                    <option value="Nam" @selected(request()->query('gender') == 'Nam')>Nam</option>
                                    <option value="Nữ" @selected(request()->query('gender') == 'Nữ')>Nữ</option>
                                </select>
                            </div>
                        </div>

                        <div class="row g-3 mt-2">
                            <div class="col">
                                <label for="citizen_card" class="form-label">Chứng minh nhân dân:</label>
                                <input type="text" class="form-control" value="{{ request()->query('citizen_card') }}">
                            </div>
                            <div class="col">
                                <label for="agency_id" class="form-label">Đơn vị:</label>
                                <select id="agency_id" class="form-select" name="agency_id">
                                    <option value="">--------------Không chọn--------------</option>
                                    @foreach ($agencies as $agency)
                                        <option value="{{ $agency->id }}" @selected(request()->query('agency_id') == $agency->id)>
                                            {{ $agency->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row g-3 mt-2">
                            <div class="col">
                                <label for="department_id" class="form-label">Phòng ban:</label>
                                <select id="department_id" class="form-select" name="department_id">
                                    <option value="">--------------Không chọn--------------</option>
                                    @foreach ($departments as $department)
                                        <option value="{{ $department->id }}" @selected(request()->query('department_id') == $department->id)>
                                            {{ $department->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col">
                                <label for="start_date" class="form-label">Ngày vào làm:</label>
                                @if (request()->query('start_date'))
                                    <input type="date" class="form-control"
                                        value="{{ date('Y-m-d', strtotime(request()->query('start_date'))) }}"
                                        name="start_date" id="start_date">
                                @else
                                    <input type="date" class="form-control" name="start_date" id="start_date">
                                @endif
                            </div>
                        </div>

                        <div class="row g-3 mt-2">
                            <div class="col">
                                <label for="position_id" class="form-label">Chức vụ:</label>
                                <select id="position_id" class="form-select" name="position_id">
                                    <option value="">--------------Không chọn--------------</option>
                                    @foreach ($positions as $position)
                                        <option value="{{ $position->id }}" @selected(request()->query('position_id') == $position->id)>
                                            {{ $position->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col">
                                <label for="is_admin" class="form-label">Phân quyền:</label>
                                <select id="is_admin" class="form-select" name="is_admin">
                                    <option value="">--------------Không chọn--------------</option>
                                    <option value="0" @selected(request()->query('is_admin') == '0')>Người dùng</option>
                                    <option value="1" @selected(request()->query('is_admin') == '1')>Người quản trị</option>
                                </select>
                            </div>
                        </div>

                        <div class="my-3 d-flex justify-content-end">
                            <div class="my-3 d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                            </div>
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
                    href="{{ route('admin.users.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Họ tên</th>
                        <th scope="col">Tài khoản</th>
                        <th scope="col">Giới tính</th>
                        <th scope="col">Phòng ban</th>
                        <th scope="col">Chức vụ</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $index => $user)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $user->fullname }}</td>
                            <td>{{ $user->username }}</td>
                            <td>{{ $user->gender }}</td>
                            <td>{{ $user->department->name }}</td>
                            <td>{{ $user->position->name }}</td>
                            <td style="min-width: 250px;">
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.users.edit', $user->id) }}">
                                        Cập nhật
                                    </a>
                                    <a class="btn btn-info ml-2" href="{{ route('admin.users.show', $user->id) }}">
                                        Xem
                                    </a>
                                    <form class="ml-2" method="post"
                                        action="{{ route('admin.users.destroy', $user->id) }}">
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
                <div class="text">Hiển thị {{ $users->firstItem() }} từ {{ $users->lastItem() }} trong
                    {{ $users->total() }} số nhân viên</div>
                <div class="pagination">{{ $users->withQueryString()->links() }}</div>
            </div>
        </div>

    </div>
@endsection
