@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Tạo nhân viên</h1>

            <form class="container" action="{{ route('admin.users.store') }}" method="POST" autocomplete="off">
                @csrf

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="fullname" class="form-label">Tên nhân viên:</label>
                        <label class="text-danger">(*)</label>
                        <input type="text" class="form-control @error('fullname') is-invalid @enderror"
                            value="{{ old('fullname') }}" name="fullname" id="fullname">

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
                            value="{{ old('birthday') }}" name="birthday" id="birthday">

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
                            value="{{ old('username') }}" name="username" id="username">

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
                        <input type="text" class="form-control @error('email') is-invalid @enderror"
                            value="{{ old('email') }}" name="email" id="email">

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
                            value="{{ old('phone') }}" name="phone" id="phone">

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
                            value="{{ old('citizen_card') }}" name="citizen_card" id="citizen_card">

                        @error('citizen_card')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="agency_id" class="form-label">Đơn vị:</label>

                        <select id="agency_id" class="form-control" name="agency_id">
                            <option>------------------------------------Không chọn------------------------------------
                            </option>
                            @foreach ($agencies as $agency)
                                <option value="{{ $agency->id }}">{{ $agency->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="department_id" class="form-label">Phòng ban:</label>

                        <select id="department_id" class="form-control" name="department_id">
                            <option>------------------------------------Không chọn------------------------------------
                            </option>
                            @foreach ($departments as $department)
                                <option value="{{ $department->id }}">{{ $department->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col">
                        <label for="start_date" class="form-label">Ngày vào làm:</label>
                        <label class="text-danger">(*)</label>
                        <input type="date" class="form-control @error('start_date') is-invalid @enderror"
                            value="{{ old('start_date') }}" name="start_date" id="start_date">

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

                        <select id="position_id" class="form-control" name="position_id">
                            <option>------------------------------------Không chọn------------------------------------
                            </option>
                            @foreach ($positions as $position)
                                <option value="{{ $position->id }}">
                                    {{ $position->name }}
                                </option>
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
                    <button type="submit" class="btn btn-primary mr-3">Tạo</button>
                    <a class="btn btn-secondary" href="{{ route('admin.users.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection

@push('scripts')
    <script type="text/javascript">
        $('select#agency_id').on('change', function() {
            $.ajax({
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{!! route('admin.departments.findByAgencyId') !!}",
                data: {
                    'agencyId': this.value,
                },
                success: function(response, textStatus, xhr) {
                    const innertHtml = response.departments.reduce(function(total, department) {
                        return total +
                            `<option value="${department.id}">${department.name}</option>`;
                    }, '<option>------------------------------------Không chọn------------------------------------</option>');
                    $('select#department_id').html(innertHtml);
                }
            });
        });

        $('select#department_id').on('change', function() {
            $.ajax({
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{!! route('admin.positions.findByDepartmentId') !!}",
                data: {
                    'department_id': this.value,
                },
                success: function(response, textStatus, xhr) {
                    const innertHtml = response.positions.reduce(function(total, position) {
                        return total +
                            `<option value="${position.id}">${position.name}</option>`;
                    }, '<option>------------------------------------Không chọn------------------------------------</option>');
                    $('select#position_id').html(innertHtml);
                }
            });
        });
    </script>
@endpush
