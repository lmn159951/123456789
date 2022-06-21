@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật hỗ trợ</h1>

            <form class="container" action="{{ route('admin.supports.update', $support->id) }}" method="POST">
                @csrf @method('PATCH')

                <div class="row align-items-start">
                    <div class="col">
                        <div class="mb-3">
                            <label for="start_year" class="form-label">Năm bắt đầu:</label>
                            <input type="number" class="form-control @error('start_year') is-invalid @enderror"
                                name="start_year" id="start_year" value="{{ old('start_year') ?? $support->start_year }}">

                            @error('start_year')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="end_year" class="form-label">Năm kết thúc:</label>
                            <input type="number" class="form-control @error('end_year') is-invalid @enderror"
                                name="end_year" id="end_year" value="{{ old('end_year') ?? $support->end_year }}">

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
                                value="{{ old('min_condition') ?? $support->min_condition }}" name="min_condition"
                                id="min_condition">

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
                                value="{{ old('max_condition') ?? $support->max_condition }}" name="max_condition"
                                id="max_condition">

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
                    <input type="number" class="form-control @error('price') is-invalid @enderror"
                        value="{{ old('price') ?? $support->price }}" name="price" id="price">

                    @error('price')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>


                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('admin.supports.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
