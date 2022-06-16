@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật phòng ban</h1>

            <form class="container" style="max-width: 800px;"
                action="{{ route('quantri.phongban.update', $phongBan->ma_phong_ban) }}" method="POST">

                @method('PATCH')
                @csrf

                <div class="mb-3">
                    <label for="ten_phong_ban" class="form-label">Tên phòng ban:</label>
                    <input type="text" class="form-control @error('ten_phong_ban') is-invalid @enderror"
                        value="{{ old('ten_phong_ban') ?? $phongBan->ten_phong_ban }}" name="ten_phong_ban"
                        id="ten_phong_ban">

                    @error('ten_phong_ban')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('quantri.phongban.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
