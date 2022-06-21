@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Quản lý hỗ trợ</h1>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('admin.supports.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Năm bắt đầu</th>
                        <th scope="col">Năm kết thúc</th>
                        <th scope="col">Điều kiện tối thiểu</th>
                        <th scope="col">Điều kiện tối đa</th>
                        <th scope="col">Số tiền</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($supports as $index => $support)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $support->start_year }}</td>
                            <td>{{ $support->end_year }}</td>
                            <td>{{ $support->min_condition }}</td>
                            <td>{{ $support->max_condition }}</td>
                            <td>{{ $support->price }}</td>
                            <td style="min-width: 250px;">
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.supports.edit', $support->id) }}">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <form class="ml-2" method="post"
                                        action="{{ route('admin.supports.destroy', $support->id) }}">
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
                <div class="text">Hiển thị {{ $supports->firstItem() }} từ {{ $supports->lastItem() }} trong
                    {{ $supports->total() }} số hỗ trợ</div>
                <div class="pagination">{{ $supports->links() }}</div>
            </div>
        </div>

    </div>
@endsection
