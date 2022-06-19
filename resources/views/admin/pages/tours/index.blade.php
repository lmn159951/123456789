@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Quản lý tour</h1>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('admin.tours.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Thời gian đi</th>
                        <th scope="col">Thời gian đăng ký</th>
                        <th scope="col">Giá tiền</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($tours as $index => $tour)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $tour->name }}</td>
                            <td>{{ $tour->tour_start_date }} - {{ $tour->tour_end_date }}</td>
                            <td>{{ $tour->registration_start_date }} - {{ $tour->registration_end_date }}</td>
                            <td>{{ $tour->price }}</td>
                            <td>{{ $tour->max_people }}</td>
                            <td style="min-width: 250px;">
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.tours.edit', $tour->id) }}">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <a class="btn btn-info ml-2" href="{{ route('admin.tours.show', $tour->id) }}">
                                        <i class="fas fa-fw fa-eye"></i>
                                    </a>
                                    <form class="ml-2" method="post"
                                        action="{{ route('admin.tours.destroy', $tour->id) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá đơn vị này?')">
                                            <i class="fas fa-fw fa-trash"></i>
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="pagination-wrapper d-flex justify-content-between">
                <div class="text">Hiển thị {{ $tours->firstItem() }} từ {{ $tours->lastItem() }} trong
                    {{ $tours->total() }} số tour</div>
                <div class="pagination">{{ $tours->links() }}</div>
            </div>
        </div>

    </div>
@endsection
