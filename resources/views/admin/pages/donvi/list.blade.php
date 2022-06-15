@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Quản lý đơn vị</h1>

            @if (session('success'))
                <div class="alert alert-success text-center">
                    {{ session('success') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('quantri.donvi.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-striped table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên đơn vị</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($danhSachDonVi as $index => $donVi)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $donVi->ten_don_vi }}</td>
                            <td>{{ $donVi->dia_chi }}</td>
                            <td>
                                <a class="btn btn-warning" href="{{ route('quantri.donvi.edit', $donVi->ma_don_vi) }}">
                                    Cập nhật
                                </a>
                                <a class="btn btn-danger" href="{{ route('quantri.donvi.delete', $donVi->ma_don_vi) }}"
                                    onclick="return confirm('Bạn có chắc muốn xoá đơn vị này?')">
                                    Xoá
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
@endsection
