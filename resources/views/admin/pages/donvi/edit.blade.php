@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật đơn vị</h1>

            <form class="container" style="max-width: 800px;" action="{{ route('quantri.donvi.update', $donVi->ma_don_vi) }}"
                method="POST">
                @csrf

                <div class="mb-3">
                    <label for="tendonvi" class="form-label">Tên đơn vị:</label>
                    <input type="text" class="form-control @error('ten_don_vi') is-invalid @enderror"
                        value="{{ old('ten_don_vi') }}" name="ten_don_vi" id="tendonvi">

                    @error('ten_don_vi')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="diachi" class="form-label">Địa chỉ:</label>
                    <input type="text" class="form-control @error('ten_don_vi') is-invalid @enderror"
                        value="{{ old('dia_chi') }}" name="dia_chi" id="diachi">

                    @error('dia_chi')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('quantri.donvi.list') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
