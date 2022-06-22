@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Thông tin đăng ký tour</h1>

            <div class="row g-3">
                <div class="col">
                    <label for="fullname" class="form-label">Tên nhân viên:</label>
                    <input type="text" class="form-control" value="{{ $tour_registration->user->fullname }}" disabled>
                </div>

                <div class="col">
                    <label for="name" class="form-label">Tên tour:</label>
                    <input type="text" id="name" class="form-control" value="{{$tour_registration->tour->name}}"
                        disabled>
                </div>
            </div>


            <div class="row g-3">
                <div class="col">
                        <div class="mt-3">
                            <label for="registration_date" class="form-label">Ngày đăng ký:</label>
                            <input type="text" class="form-control"
                                value="{{ date('d/m/Y', strtotime($tour_registration->registration_date)) }}" disabled>
                        </div>
                </div>
                <div class="col">
                    <div class="mt-3">
                    <label for="relatives_name" class="form-label">Tên người thân:</label>
                    <input type="text" id="relatives_name" class="form-control" value="{{ $tour_registration->relative_fullname }}"
                     disabled>
                    </div>
                </div>
            </div>

            <div class="row g-3">
                <div class="col">
                    <div class="mt-3">
                                <label for="birthday" class="form-label">Ngày sinh:</label>
                                <input type="text" class="form-control"
                                    value="{{ date('d/m/Y', strtotime($tour_registration->birthday)) }}" disabled>
                            </div>
                </div>
                <div class="col">
                    <div class="mt-3">
                        <label for="gender" class="form-label">Giới tính:</label>
                        <input type="text" class="form-control" value="{{ $tour_registration->gender }}" disabled>
                    </div>
                </div>
            </div>

            <div class="row g-3">
                <div class="col">
                    <div class="mt-3">
                                <label for="relationship" class="form-label">Mối quan hệ:</label>
                                <input type="text" class="form-control"
                                    value="{{ $tour_registration->relationship }}" disabled>
                            </div>
                </div>
                <div class="col">
                    <div class="mt-3">
                        <label for="phone" class="form-label">Số điện thoại:</label>
                        <input type="text" class="form-control" value="{{ $tour_registration->phone }}" disabled>
                    </div>
                </div>
            </div>

            <div class="row g-3">
                <div class="col">
                    <div class="mt-3">
                                <label for="citizen_card" class="form-label">CMND:</label>
                                <input type="text" class="form-control"
                                    value="{{ $tour_registration->citizen_card }}" disabled>
                            </div>
                </div>
                <div class="col">
                    <div class="mt-3">
                        <label for="price" class="form-label">Giá tiền:</label>
                        <input type="text" class="form-control" value="{{ $tour_registration->cost }}" disabled>
                    </div>
                </div>
            </div>

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-secondary" href="{{ route('admin.tour_registrations.index') }}">
                    Trở về
                </a>
            </div>
        </div>

    </div>
@endsection
