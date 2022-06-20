@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center">Quản lý đơn vị</h3>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-between">
                <input type="text" class="form-control col-4" autocomplete="off" name="keyword" id="search">

                <a class="btn btn-primary" href="{{ route('admin.agencies.create') }}">
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
                <tbody class="table-content">
                    @foreach ($agencies as $index => $agency)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td style="max-width: 400px;">{{ $agency->name }}</td>
                            <td style="max-width: 400px;">{{ $agency->address }}</td>
                            <td>
                                <div class="d-flex">
                                    <a class="btn btn-warning" href="{{ route('admin.agencies.edit', $agency->id) }}">
                                        Cập nhật
                                    </a>
                                    <form class="ml-3" method="post"
                                        action="{{ route('admin.agencies.destroy', $agency->id) }}">
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
                <div class="text">Hiển thị {{ $agencies->firstItem() }} từ {{ $agencies->lastItem() }} trong
                    {{ $agencies->total() }} số tour</div>
                <div class="pagination">{{ $agencies->links() }}</div>
            </div>
        </div>

    </div>
@endsection

@push('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'csrftoken': '{{ csrf_token() }}'
                }
            });

            $('#search').keyup(function() {
                $.ajax({
                    type: "GET",
                    url: "{{ route('admin.agencies.search') }}",
                    data: {
                        'keyword': $(this).val()
                    },
                    dataType: "json",
                    success: function(response) {
                        console.log(response);
                        $('.table-content').html(response);
                    }
                });
            });
        });
    </script>
@endpush
