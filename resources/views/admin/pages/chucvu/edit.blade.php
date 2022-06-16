@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật chức vụ</h1>

            <form class="container" style="max-width: 800px;"
                action="{{ route('quantri.chucvu.update', $chucVu->ma_chuc_vu) }}" method="POST">

                @method('PATCH')
                @csrf

                <div class="mb-3">
                    <label for="ten_chuc_vu" class="form-label">Tên chức vụ:</label>
                    <input type="text" class="form-control @error('ten_chuc_vu') is-invalid @enderror"
                        value="{{ old('ten_chuc_vu') ?? $chucVu->ten_chuc_vu }}" name="ten_chuc_vu" id="ten_chuc_vu">

                    @error('ten_chuc_vu')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('quantri.chucvu.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
