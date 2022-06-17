@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Tạo đơn vị</h1>

            <form class="container" style="max-width: 800px;" action="{{ route('admin.agencies.store') }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label for="name" class="form-label">Tên đơn vị:</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                        value="{{ old('name') }}" name="name" id="name">

                    @error('name')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="address" class="form-label">Địa chỉ:</label>
                    <input type="text" class="form-control @error('address') is-invalid @enderror"
                        value="{{ old('address') }}" name="address" id="address">

                    @error('address')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Tạo</button>
                    <a class="btn btn-secondary" href="{{ route('admin.agencies.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
