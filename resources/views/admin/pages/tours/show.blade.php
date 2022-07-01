@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Thông tin tour</h1>

            <div class="row g-3">
                <div class="col">
                    <label for="fullname" class="form-label">Tên tour:</label>
                    <input type="text" class="form-control" value="{{ $tour->name }}" disabled>
                </div>

                <div class="col">
                    <label for="department_id" class="form-label">Vùng miền:</label>
                    <input type="text" id="department_id" class="form-control" value="{{ $tour->region->name }}"
                        disabled>
                </div>
            </div>

            <div class="row g-3 mt-2">
                <div class="col">
                    <label for="fullname" class="form-label">Hình ảnh:</label>
                    <input type="text" class="form-control" value="{{ asset($tour->image) }}" disabled>
                    @if (str_starts_with($tour->image, 'http'))
                        <img src="{{ $tour->image }}" alt="{{ $tour->image }}" height="100">
                    @else
                        <img src="{{ asset( $tour->image) }}"
                            alt="{{ asset( $tour->image) }}" height="100">
                    @endif
                </div>

                <div class="col">
                    <label for="username" class="form-label">File mô tả:</label>
                    <input type="text" class="form-control" value="{{ asset($tour->description_file) }}" disabled>
                    <a href="{{ route('admin.tours.showFileDescription', $tour->id) }}" target="_BLANK">Click here to open
                        the file</a>
                </div>
            </div>

            <div class="row g-3 mt-2">
                <div class="col">
                    <label for="password" class="form-label">Ngày bắt đầu đăng ký tour:</label>
                    <input type="text" class="form-control"
                        value="{{ date('d/m/Y', strtotime($tour->registration_start_date)) }}" disabled>
                </div>
                <div class="col">
                    <label for="email" class="form-label">Ngày kết thúc đăng ký tour:</label>
                    <input type="text" class="form-control"
                        value="{{ date('d/m/Y', strtotime($tour->registration_end_date)) }}" disabled>
                </div>
            </div>

            <div class="row g-3 mt-2">
                <div class="col">
                    <label for="password" class="form-label">Ngày bắt đầu tour:</label>
                    <input type="text" class="form-control"
                        value="{{ date('d/m/Y', strtotime($tour->tour_start_date)) }}" disabled>
                </div>
                <div class="col">
                    <label for="email" class="form-label">Ngày kết thúc tour:</label>
                    <input type="text" class="form-control"
                        value="{{ date('d/m/Y', strtotime($tour->tour_end_date)) }}" disabled>
                </div>
            </div>


            <div class="row g-3 mt-2">
                <div class="col">
                    <label for="phone" class="form-label">Giá tiền:</label>
                    <input type="text" class="form-control" value="{{ $tour->price }}" disabled>
                </div>
                <div class="col">
                    <label for="gender" class="form-label">Số người tối đa:</label>
                    <input type="text" id="gender" class="form-control" value="{{ $tour->max_people }}" disabled>
                </div>
            </div>

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-secondary" href="{{ route('admin.tours.index') }}">
                    Trở về
                </a>
            </div>
        </div>

    </div>
@endsection
