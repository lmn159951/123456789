@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center">Quản lý chức vụ</h3>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('admin.positions.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-striped table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên chức vụ</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($positions as $index => $position)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $position->name }}</td>
                            <td>
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.positions.edit', $position->id) }}">
                                        Cập nhật
                                    </a>
                                    <form class="ml-3" method="post"
                                        action="{{ route('admin.positions.destroy', $position->id) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá chức vụ này?')">
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
                <div class="text">Hiển thị {{ $positions->firstItem() }} từ {{ $positions->lastItem() }} trong
                    {{ $positions->total() }} số tour</div>
                <div class="pagination">{{ $positions->links() }}</div>
            </div>
        </div>

    </div>
@endsection
