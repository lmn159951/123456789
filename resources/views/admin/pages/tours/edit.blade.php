@extends('admin.layouts.admin')

@push('styles')
    <link href="{{ asset('admin/css/virtual-select.min.css') }}" rel="stylesheet">
    <style>
        #agency_ids {
            display: block;
            max-width: 100%;
        }

        img {
            max-height: 150px;
            max-width: 90%;
        }
    </style>
@endpush

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật tour</h1>

            <form class="container" action="{{ route('admin.tours.update', $tour->id) }}" method="POST"
                enctype="multipart/form-data" autocomplete="off">
                @csrf @method('PUT')

                <div class="mb-3">
                    <label for="name" class="form-label">Tên tour:</label>
                    <label class="text-danger">(*)</label>
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
                            <label for="file_image" class="form-label">Hình ảnh:</label>
                            <label class="text-danger">(*)</label>
                            <div class="custom-file">
                                <input type="file" name="file_image" accept="image/png, image/jpeg, image/jpg, image/gif"
                                    class="custom-file-input @error('file_image') is-invalid @enderror"
                                    id="validatedCustomFile" onchange="loadFile(event)"
                                    value="{{ old('image') ?? $tour->image }}">
                                <label class="custom-file-label"
                                    for="validatedCustomFile">{{ asset($tour->image) }}</label>

                                @error('file_image')
                                    <div id="validationServer03Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <img id="imageInput" src="{{ asset($tour->image) }}">
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="file_description" class="form-label">File mô tả:</label>
                            <label class="text-danger">(*)</label>
                            <div class="custom-file">
                                <input type="file" name="file_description"
                                    accept="application/pdf, application/msword, application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                                    class="custom-file-input @error('file_description') is-invalid @enderror"
                                    id="validatedCustomFile"
                                    value="{{ old('description_file') ?? $tour->description_file }}">
                                <label class="custom-file-label"
                                    for="validatedCustomFile">{{ asset($tour->description_file) }}</label>

                                @error('file_description')
                                    <div id="validationServer03Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <a href="{{ route('admin.tours.download', $tour->id) }}">Nhấn để tải</a>
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
                            <label class="text-danger">(*)</label>
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
                            <label for="tour_start_date" class="form-label">Ngày bắt đầu tour:</label>
                            <label class="text-danger">(*)</label>
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
                            <label class="text-danger">(*)</label>
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
                            <label for="price" class="form-label">Số tiền:</label>
                            <label class="text-danger">(*)</label>
                            <input type="text"
                                class="form-control number-separator @error('price') is-invalid @enderror"
                                value="{{ old('price') ?? $tour->price }}" name="price" id="price">

                            @error('price')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    {{-- </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="max_people" class="form-label">Số người tối đa:</label>
                            <label class="text-danger">(*)</label>
                            <input type="number" class="form-control @error('max_people') is-invalid @enderror"
                                value="{{ old('max_people') ?? $tour->max_people }}" name="max_people"
                                id="max_people">

                            @error('max_people')
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div> --}}
                    </div>
                </div>

                <div class="mb-3">
                    <label for="region" class="form-label">Vùng miền:</label>
                    <select name="region_id" id="region_id" class="form-control">
                        @if (old('region_id'))
                            @foreach ($regions as $region)
                                <option value="{{ $region->id }}" @selected(old('region_id') === $region->id)>{{ $region->name }}
                                </option>
                            @endforeach
                        @else
                            @foreach ($regions as $region)
                                <option value="{{ $region->id }}" @selected($tour->region_id === $region->id)>
                                    {{ $region->name }}
                                </option>
                            @endforeach
                        @endif
                    </select>
                </div>

                <div class="form-group">
                    <label for="agency_ids">Đơn vị:</label>
                    <label class="text-danger">(*)</label>

                    <select multiple id="agency_ids" name="agency_ids[]" placeholder="Đơn vị" data-search="true"
                        data-silent-initial-value-set="true">
                        @foreach ($agencies as $agency)
                            <option value="{{ $agency->id }}" @selected(in_array($agency->id, $agency_ids))>
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
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('admin.tours.index') }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('admin/vendor/jquery/easy-number-separator.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/js/virtual-select.min.js') }}"></script>
    <script type="text/javascript">
        VirtualSelect.init({
            ele: '#agency_ids'
        });

        $('input[type="file"]').change(function(event) {
            const filename = event.target.files[0].name;
            $(event.target).siblings('.custom-file-label').html(filename);
        });
        var loadFile = function(event) {
            var imageInput = document.getElementById('imageInput');
            imageInput.src = URL.createObjectURL(event.target.files[0]);
            imageInput.onload = function() {
                URL.revokeObjectURL(imageInput.src)
            }
        };
    </script>
@endpush
