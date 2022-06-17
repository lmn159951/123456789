@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Thông tin nhân viên</h1>

            <form class="container" action="{{ route('admin.users.store') }}" method="POST">
                @csrf

                <div class="row g-3">
                    <div class="col">
                        <label for="fullname" class="form-label">Tên nhân viên:</label>
                        <input type="text" class="form-control" value="{{ $user->fullname }}" disabled>
                    </div>
                    <div class="col">
                        <label for="username" class="form-label">Tên tài khoản:</label>
                        <input type="text" class="form-control" value="{{ $user->username }}" disabled>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="password" class="form-label">Mật khẩu:</label>
                        <input type="password" class="form-control" value="{{ $user->password }}" disabled>
                    </div>
                    <div class="col">
                        <label for="email" class="form-label">Email:</label>
                        <input type="text" class="form-control" value="{{ $user->email }}" disabled>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="phone" class="form-label">Phone:</label>
                        <input type="text" class="form-control" value="{{ $user->phone }}" disabled>
                    </div>
                    <div class="col">
                        <label for="gender" class="form-label">Giới tính:</label>
                        <input type="text" id="gender" class="form-control" value="{{ $user->gender }}" disabled>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="citizen_card" class="form-label">Chứng minh nhân dân:</label>
                        <input type="text" class="form-control" value="{{ $user->citizen_card }}" disabled>
                    </div>
                    <div class="col">
                        <label for="agency_id" class="form-label">Đơn vị:</label>
                        <input type="text" id="agency_id" class="form-control" value="{{ $user->agency->name }}"
                            disabled>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="department_id" class="form-label">Phòng ban:</label>
                        <input type="text" id="department_id" class="form-control"
                            value="{{ $user->department->name }}" disabled>
                    </div>
                    <div class="col">
                        <label for="start_date" class="form-label">Ngày vào làm:</label>
                        <input type="text" id="start_date" class="form-control"
                            value="{{ date('d-m-Y', strtotime($user->start_date)) }}" disabled>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="position_id" class="form-label">Chức vụ:</label>
                        <input type="text" id="position_id" class="form-control" value="{{ $user->position->name }}"
                            disabled>
                    </div>
                    <div class="col">
                        <label for="is_admin" class="form-label">Phân quyền:</label>
                        <input type="text" id="is_admin" class="form-control"
                            value="{{ $user->is_admin ? 'Người quản trị' : 'Người dùng' }}" disabled>
                    </div>
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <a class="btn btn-secondary" href="{{ route('admin.users.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
