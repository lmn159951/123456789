@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Tạo nhân viên</h1>

            <form class="container" style="max-width: 800px;" action="{{ route('quantri.nhanvien.store') }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label for="ten_nhan_vien" class="form-label">Tên nhân viên:</label>
                    <input type="text" class="form-control @error('ten_nhan_vien') is-invalid @enderror"
                        value="{{ old('ten_nhan_vien') }}" name="ten_nhan_vien" id="ten_nhan_vien">

                    @error('ten_nhan_vien')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Tạo</button>
                    <a class="btn btn-secondary" href="{{ route('quantri.nhanvien.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
