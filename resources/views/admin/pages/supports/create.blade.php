@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Tạo hỗ trợ</h1>

            @if ($errors->has('baseError'))
                <div class="alert alert-danger my-3 text-center">
                    {{ $errors->first('baseError') }}
                </div>
            @endif

            <form class="container" action="{{ route('admin.supports.store') }}" method="POST">
                @csrf

                <div class="row align-items-start">
                    <div class="col">
                        <div class="mb-3">
                            <label for="start_year" class="form-label">Năm bắt đầu:</label>
                            <label class="text-danger">(*)</label>

                            <select id="start_year" class="form-control" name="start_year">
                                @foreach ($start_years as $start_year)
                                    <option value="{{ $start_year }}" @selected($start_year == old('start_year'))>
                                        {{ $start_year }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="end_year" class="form-label">Năm kết thúc:</label>
                            <label class="text-danger">(*)</label>

                            <select id="end_year" class="form-control @error('end_year') is-invalid @enderror"
                                name="end_year">
                                @foreach ($end_years as $end_year)
                                    <option value="{{ $end_year }}" @selected($end_year == old('end_year'))>
                                        {{ $end_year }}
                                    </option>
                                @endforeach
                            </select>

                            @error('end_year')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                </div>

                <div class="row align-items-start">
                    <div class="col">
                        <div class="mb-3">
                            <label for="min_condition" class="form-label">Điều kiện tối thiểu:</label>
                            <input type="number" class="form-control @error('min_condition') is-invalid @enderror"
                                value="{{ old('min_condition') }}" name="min_condition" id="min_condition">

                            @error('min_condition')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="max_condition" class="form-label">Điều kiện tối đa:</label>
                            <input type="number" class="form-control @error('max_condition') is-invalid @enderror"
                                value="{{ old('max_condition') }}" name="max_condition" id="max_condition">

                            @error('max_condition')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="price" class="form-label">Số tiền:</label>
                    <label class="text-danger">(*)</label>
                    <input type="number" class="form-control @error('price') is-invalid @enderror"
                        value="{{ old('price') }}" name="price" id="price">

                    @error('price')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>


                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Tạo</button>
                    <a class="btn btn-secondary" href="{{ route('admin.supports.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
