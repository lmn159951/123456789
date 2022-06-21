@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật tour</h1>

            <form class="container" action="{{ route('admin.tours.update', $tour->id) }}" method="HEAD"
                enctype="multipart/form-data">
                @csrf @method('HEAD')

                <div class="mb-3">
                    <label for="name" class="form-label">Tên tour:</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                        value="{{ old('name') ?? $tour->name }}" name="name" id="name">

                    @error('name')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="row align-items-start">
                    <div class="col">
                        <div class="mb-3">
                            <label for="image" class="form-label">Hình ảnh:</label>
                            <input type="file" class="form-control @error('image') is-invalid @enderror"
                                value="{{ old('image') ?? $tour->image }}" name="image" id="image">

                            @error('image')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="description_file" class="form-label">File mô tả:</label>
                            <input type="file" class="form-control @error('description_file') is-invalid @enderror"
                                value="{{ old('description_file') ?? $tour->description_file }}" name="description_file"
                                id="description_file">

                            @error('description_file')
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
                            <label for="tour_start_date" class="form-label">Ngày bắt đầu tour:</label>
                            <input type="date" class="form-control @error('tour_start_date') is-invalid @enderror"
                                value="{{ old('tour_start_date') ?? date('Y-m-d', strtotime($tour->tour_start_date)) }}"
                                name="tour_start_date" id="tour_start_date">

                            @error('tour_start_date')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="tour_end_date" class="form-label">Ngày kết thúc tour:</label>
                            <input type="date" class="form-control @error('tour_end_date') is-invalid @enderror"
                                value="{{ old('tour_end_date') ?? date('Y-m-d', strtotime($tour->tour_end_date)) }}"
                                name="tour_end_date" id="tour_end_date">

                            @error('tour_end_date')
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
                            <label for="registration_start_date" class="form-label">Ngày bắt đầu đăng ký tour:</label>
                            <input type="date"
                                class="form-control @error('registration_start_date') is-invalid @enderror"
                                value="{{ old('registration_start_date') ?? date('Y-m-d', strtotime($tour->registration_start_date)) }}"
                                name="registration_start_date" id="registration_start_date">

                            @error('registration_start_date')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="registration_end_date" class="form-label">Ngày kết thúc đăng ký tour:</label>
                            <input type="date" class="form-control @error('registration_end_date') is-invalid @enderror"
                                value="{{ old('registration_end_date') ?? date('Y-m-d', strtotime($tour->registration_end_date)) }}"
                                name="registration_end_date" id="registration_end_date">

                            @error('registration_end_date')
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
                            <label for="price" class="form-label">Số tiền:</label>
                            <input type="number" class="form-control @error('price') is-invalid @enderror"
                                value="{{ old('price') ?? $tour->price }}" name="price" id="price">

                            @error('price')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="max_people" class="form-label">Số người tối đa:</label>
                            <input type="number" class="form-control @error('max_people') is-invalid @enderror"
                                value="{{ old('max_people') ?? $tour->max_people }}" name="max_people"
                                id="max_people">

                            @error('max_people')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="region" class="form-label">Vùng miền:</label>
                    <select name="region_id" id="region_id" class="form-select">
                        @foreach ($regions as $region)
                            @if ($tour->region_id === $region->id)
                                <option value="{{ $region->id }}" selected>{{ $region->name }}</option>
                            @else
                                <option value="{{ $region->id }}">{{ $region->name }}</option>
                            @endif
                        @endforeach
                    </select>
                </div>


                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('admin.tours.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
