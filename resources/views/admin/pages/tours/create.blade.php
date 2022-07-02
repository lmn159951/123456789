@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Tạo tour</h1>

            <form class="container" action="{{ route('admin.tours.store') }}" method="POST" enctype="multipart/form-data"
                autocomplete="off">
                @csrf

                <div class="mb-3">
                    <label for="name" class="form-label">Tên tour:</label>
                    <label class="text-danger">(*)</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                        value="{{ old('name') }}" name="name" id="name">

                    @error('name')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="row align-items-start">
                    <div class="col">
                        <div class="mb-3">
                            <label for="file_image" class="form-label">Hình ảnh:</label>
                            <label class="text-danger">(*)</label>
                            <div class="custom-file">
                                <input type="file" name="file_image"
                                    class="custom-file-input @error('file_image') is-invalid @enderror"
                                    id="validatedCustomFile" onchange="loadFile(event)">
                                <label class="custom-file-label" for="validatedCustomFile">Chọn file...</label>

                                @error('file_image')
                                    <div id="validationServer03Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <img id="imageInput">
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="file_description" class="form-label">File mô tả:</label>
                            <label class="text-danger">(*)</label>
                            <div class="custom-file">
                                <input type="file" name="file_description"
                                    class="custom-file-input @error('file_description') is-invalid @enderror"
                                    id="validatedCustomFile">
                                <label class="custom-file-label" for="validatedCustomFile">Chọn file...</label>

                                @error('file_description')
                                    <div id="validationServer03Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row align-items-start">
                    <div class="col">
                        <div class="mb-3">
                            <label for="registration_start_date" class="form-label">Ngày bắt đầu đăng ký tour:</label>
                            <label class="text-danger">(*)</label>
                            <input type="date"
                                class="form-control @error('registration_start_date') is-invalid @enderror"
                                value="{{ old('registration_start_date') }}" name="registration_start_date"
                                id="registration_start_date">

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
                            <label class="text-danger">(*)</label>
                            <input type="date" class="form-control @error('registration_end_date') is-invalid @enderror"
                                value="{{ old('registration_end_date') }}" name="registration_end_date"
                                id="registration_end_date">

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
                            <label for="tour_start_date" class="form-label">Ngày bắt đầu tour:</label>
                            <label class="text-danger">(*)</label>
                            <input type="date" class="form-control @error('tour_start_date') is-invalid @enderror"
                                value="{{ old('tour_start_date') }}" name="tour_start_date" id="tour_start_date">

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
                            <label class="text-danger">(*)</label>
                            <input type="date" class="form-control @error('tour_end_date') is-invalid @enderror"
                                value="{{ old('tour_end_date') }}" name="tour_end_date" id="tour_end_date">

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
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="max_people" class="form-label">Số người tối đa:</label>
                            <label class="text-danger">(*)</label>
                            <input type="number" class="form-control @error('max_people') is-invalid @enderror"
                                value="{{ old('max_people') }}" name="max_people" id="max_people">

                            @error('max_people')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="region_id">Vùng miền:</label>
                    <label class="text-danger">(*)</label>
                    <select id="region_id" name="region_id" class="form-control">
                        @foreach ($regions as $region)
                            <option value="{{ $region->id }}" @selected($region->id == old('region_id'))>{{ $region->name }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="agency_ids">Đơn vị:</label>
                    <label class="text-danger">(*)</label>
                    <select multiple class="form-control @error('agency_ids') is-invalid @enderror" name="agency_ids[]"
                        id="agency_ids">
                        @foreach ($agencies as $agency)
                            <option value="{{ $agency->id }}" @selected(in_array($agency->id, old('agency_ids') ?? []))>
                                {{ $agency->name }}
                            </option>
                        @endforeach
                    </select>

                    @error('agency_ids')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Tạo</button>
                    <a class="btn btn-secondary" href="{{ route('admin.tours.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection

@push('scripts')
    <script type="text/javascript">
        var loadFile = function(event) {
            var imageInput = document.getElementById('imageInput');
            imageInput.src = URL.createObjectURL(event.target.files[0]);
            imageInput.onload = function() {
                URL.revokeObjectURL(imageInput.src)
            }
        };
    </script>
@endpush

@push('styles')
    <style>
        img {
            max-height: 100px;
        }
    </style>
@endpush
