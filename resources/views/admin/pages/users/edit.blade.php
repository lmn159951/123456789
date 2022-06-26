@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật nhân viên</h1>

            <form class="container" action="{{ route('admin.users.update', $user->id) }}" method="POST">
                @csrf @method('PATCH')

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="fullname" class="form-label">Tên nhân viên:</label>
                        <label class="text-danger">(*)</label>
                        <input type="text" class="form-control @error('fullname') is-invalid @enderror"
                            value="{{ old('fullname') ?? $user->fullname }}" name="fullname" id="fullname">

                        @error('fullname')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="birthday" class="form-label">Ngày sinh:</label>
                        <label class="text-danger">(*)</label>
                        <input type="date" class="form-control @error('birthday') is-invalid @enderror"
                            value="{{ old('birthday') ?? $user->birthday }}" name="birthday" id="birthday">

                        @error('birthday')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="username" class="form-label">Tên tài khoản:</label>
                        <label class="text-danger">(*)</label>
                        <input type="text" class="form-control @error('username') is-invalid @enderror"
                            value="{{ old('username') ?? $user->username }}" name="username" id="username">

                        @error('username')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="password" class="form-label">Mật khẩu:</label>
                        <label class="text-danger">(*)</label>
                        <input type="password" class="form-control @error('password') is-invalid @enderror"
                            value="{{ old('password') }}" name="password" id="password">

                        @error('password')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="email" class="form-label">Email:</label>
                        <label class="text-danger">(*)</label>
                        <input type="text" class="form-control @error('email') is-invalid @enderror"
                            value="{{ old('email') ?? $user->email }}" name="email" id="email">

                        @error('email')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="phone" class="form-label">Phone:</label>
                        <input type="text" class="form-control @error('phone') is-invalid @enderror"
                            value="{{ old('phone') ?? $user->phone }}" name="phone" id="phone">

                        @error('phone')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="gender" class="form-label">Giới tính:</label>

                        <select id="gender" class="form-control" name="gender">
                            <option value="Nam">Nam</option>
                            <option value="Nữ">Nữ</option>
                        </select>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="citizen_card" class="form-label">Chứng minh nhân dân:</label>
                        <label class="text-danger">(*)</label>
                        <input type="text" class="form-control @error('citizen_card') is-invalid @enderror"
                            value="{{ old('citizen_card') ?? $user->citizen_card }}" name="citizen_card"
                            id="citizen_card">

                        @error('citizen_card')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="agency_id" class="form-label">Đơn vị:</label>

                        <select id="agency_id" class="form-control" name="agency_id">
                            @foreach ($agencies as $agency)
                                @if ($user->agency_id === $agency->id)
                                    <option value="{{ $agency->id }}" selected>{{ $agency->name }}</option>
                                @else
                                    <option value="{{ $agency->id }}">{{ $agency->name }}</option>
                                @endif
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="department_id" class="form-label">Phòng ban:</label>

                        <select id="department_id" class="form-control" name="department_id"
                            value="{{ old('department_id') }}">
                            @foreach ($departments as $department)
                                <option value="{{ $department->id }}">{{ $department->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col">
                        <label for="start_date" class="form-label">Ngày vào làm:</label>
                        <label class="text-danger">(*)</label>
                        <input type="date" class="form-control @error('start_date') is-invalid @enderror"
                            value="{{ old('start_date', date('Y-m-d')) ?? date('d-m-Y', strtotime($user->start_date)) }}"
                            name="start_date" id="start_date">

                        @error('start_date')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="position_id" class="form-label">Chức vụ:</label>

                        <select id="position_id" class="form-control" name="position_id"
                            value="{{ old('position_id') }}">
                            @foreach ($positions as $position)
                                <option value="{{ $position->id }}">{{ $position->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col">
                        <label for="is_admin" class="form-label">Phân quyền:</label>

                        <select id="is_admin" class="form-control" name="is_admin">
                            <option value="0">Người dùng</option>
                            <option value="1">Người quản trị</option>
                        </select>
                    </div>
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('admin.users.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
