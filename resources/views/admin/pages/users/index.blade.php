@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Quản lý nhân viên</h1>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('admin.users.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Họ tên</th>
                        <th scope="col">Tài khoản</th>
                        <th scope="col">Giới tính</th>
                        <th scope="col">Phòng ban</th>
                        <th scope="col">Chức vụ</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $index => $user)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $user->fullname }}</td>
                            <td>{{ $user->username }}</td>
                            <td>{{ $user->gender }}</td>
                            <td>{{ $user->department->name }}</td>
                            <td>{{ $user->position->name }}</td>
                            <td style="min-width: 250px;">
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.users.edit', $user->id) }}">
                                        Cập nhật
                                    </a>
                                    <a class="btn btn-info ml-2" href="{{ route('admin.users.show', $user->id) }}">
                                        Xem
                                    </a>
                                    <form class="ml-2" method="post"
                                        action="{{ route('admin.users.destroy', $user->id) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá đơn vị này?')">
                                            Xoá
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="pagination-wrapper d-flex justify-content-between">
                <div class="text">Hiển thị {{ $users->firstItem() }} từ {{ $users->lastItem() }} trong
                    {{ $users->total() }} số nhân viên</div>
                <div class="pagination">{{ $users->links() }}</div>
            </div>
        </div>

    </div>
@endsection
