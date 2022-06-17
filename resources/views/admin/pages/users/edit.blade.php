@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật nhân viên</h1>

            <form class="container" action="{{ route('admin.users.update', $user->id) }}" method="POST">
                @csrf

                <div class="row g-3">
                    <div class="col">
                        <label for="fullname" class="form-label">Tên nhân viên:</label>
                        <input type="text" class="form-control @error('fullname') is-invalid @enderror"
                            value="{{ old('fullname') ?? $user->fullname }}" name="fullname" id="fullname">

                        @error('fullname')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="username" class="form-label">Tên tài khoản:</label>
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
                        <label for="email" class="form-label">Email:</label>
                        <input type="text" class="form-control @error('email') is-invalid @enderror"
                            value="{{ old('email') ?? $user->email }}" name="email" id="email">

                        @error('email')
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="citizen_card" class="form-label">Chứng minh nhân dân:</label>
                        <input type="text" class="form-control @error('citizen_card') is-invalid @enderror"
                            value="{{ old('citizen_card') ?? $user->citizen_card }}" name="citizen_card"
                            id="citizen_card">

                        @error('citizen_card')
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

                        <select id="gender" class="form-select" name="gender">
                            @if ($user->gender === 'Nam')
                                <option value="Nam" selected>Nam</option>
                                <option value="Nữ">Nữ</option>
                            @else
                                <option value="Nam">Nam</option>
                                <option value="Nữ" selected>Nữ</option>
                            @endif
                        </select>
                    </div>
                </div>

                <div class="row g-3 mt-2">
                    <div class="col">
                        <label for="departmentId" class="form-label">Phòng ban:</label>

                        <select id="departmentId" class="form-select" name="departmentId"
                            value="{{ old('departmentId') }}">
                            @foreach ($departments as $department)
                                <option value="{{ $department->id }}">{{ $department->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col">
                        <label for="positionId" class="form-label">Chức vụ:</label>

                        <select id="positionId" class="form-select" name="positionId" value="{{ old('positionId') }}">
                            @foreach ($positions as $position)
                                <option value="{{ $position->id }}">{{ $position->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="mt-3">
                    <label for="agencyId" class="form-label">Đơn vị:</label>

                    <select id="agencyId" class="form-select" name="agencyId" value="{{ old('agencyId') }}">
                        @foreach ($agencies as $agency)
                            @if ($user->agency_id === $agency->id)
                                <option value="{{ $agency->id }}" selected>{{ $agency->name }}</option>
                            @else
                                <option value="{{ $agency->id }}">{{ $agency->name }}</option>
                            @endif
                        @endforeach
                    </select>
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
