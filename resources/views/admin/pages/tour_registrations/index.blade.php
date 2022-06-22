@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Quản lý đăng ký tour</h1>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('admin.tour_registrations.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên nhân viên</th>
                        <th scope="col">Tên tour</th>
                        <th scope="col">Ngày đăng ký tour</th>
                        <th scope="col">Tên người thân</th>
                        <th scope="col">Giá tiền</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($tour_registrations as $index => $tour_registration)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $tour_registration->user->fullname }}</td>
                            <td>{{ $tour_registration->tour->name }}</td>
                            <td>{{ date('d/m/Y', strtotime($tour_registration->registration_date))}}</td>
                            <td>{{ $tour_registration->relative_fullname }}</td>
                            <td>{{ $tour_registration->cost }}</td>
                            <td style="min-width: 250px;">
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.tour_registrations.edit', $tour_registration->id) }}">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <a class="btn btn-info ml-2" href="{{ route('admin.tour_registrations.show', $tour_registration->id) }}">
                                        <i class="fas fa-fw fa-eye"></i>
                                    </a>
                                    <form class="ml-2" method="post"
                                        action="{{ route('admin.tour_registrations.destroy', $tour_registration->id) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá đăng ký này?')">
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
                <div class="text">Hiển thị {{ $tour_registrations->firstItem() }} từ {{ $tour_registrations->lastItem() }} trong
                    {{ $tour_registrations->total() }} số đăng ký</div>
                <div class="pagination">{{ $tour_registrations->links() }}</div>
            </div>
        </div>

    </div>
@endsection
