@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Cập nhật chức vụ</h1>

            <form class="container" style="max-width: 800px;" action="{{ route('admin.agencies.departments.positions.update', [
                'agencySlug' => request()->route('agencySlug'),
                'departmentSlug' => request()->route('departmentSlug'),
                'position' => $position->id,
            ]) }}"
                method="POST" autocomplete="off">

                @method('PATCH')
                @csrf

                <div class="mb-3">
                    <label for="name" class="form-label">Tên chức vụ:</label>
                    <label class="text-danger">(*)</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                        value="{{ old('name') ?? $position->name }}" name="name" id="name">

                    @error('name')
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary mr-3">Cập nhật</button>
                    <a class="btn btn-secondary" href="{{ route('admin.agencies.departments.positions.index', [
                        'agencySlug' => request()->route('agencySlug'),
                        'departmentSlug' => request()->route('departmentSlug'),
                    ]) }}">
                        Trở về
                    </a>
                </div>
            </form>
        </div>

    </div>
@endsection
