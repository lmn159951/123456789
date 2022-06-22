@extends('admin.layouts.admin')

@push('styles')
    <link href="{{ asset('admin/fonts/icomoon/style.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/css/custom-table.css') }}" rel="stylesheet">
@endpush

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
                <div class="form-group d-flex align-items-center col-3">
                    <label for="perPage">Số dòng trong bảng: </label>
                    <select class="form-control" id="perPage" name="perPage" onchange="location = this.value"
                        style="width:auto;margin-left: 10px;">

                        @foreach ($perPages as $perPage)
                            <option value="{{ request()->fullUrlWithQuery(['per_page' => $perPage]) }}"
                                @selected(request()->input('per_page') == $perPage)>
                                {{ $perPage }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="d-grid gap-2 d-flex align-items-center justify-content-center">
                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#searchModal">
                        Tìm kiếm
                    </button>

                    <button id="buttonDeleteManyModel" type="button" class="btn btn-danger" data-bs-toggle="modal"
                        data-bs-target="#deleteAllModal">
                        Xoá đánh dấu
                    </button>

                    <div class="modal fade" id="deleteAllModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p>Bạn có chắc muốn xoá đơn vị đã đánh dấu không?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-danger" id="buttonDeleteMany">
                                        Xoá đánh dấu
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="searchModalLabel">Form Tìm kiếm</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>

                                <form class="container" action="{{ route('admin.agencies.search') }}" method="POST">
                                    @csrf @method('POST')

                                    <div class="modal-body">
                                        <div class="row align-items-start">
                                            <div class="mb-3">
                                                <label for="name" class="form-label">Tên đơn vị:</label>
                                                <input type="text" class="form-control"
                                                    value="{{ request()->query('name') }}" name="name" id="name">
                                            </div>
                                            <div class="mb-3">
                                                <label for="address" class="form-label">Địa chỉ:</label>
                                                <input type="text" class="form-control"
                                                    value="{{ request()->query('address') }}" name="address"
                                                    id="address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                            Đóng
                                        </button>
                                        <button type="submit" class="btn btn-primary">
                                            Tìm kiếm
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <a class="btn btn-primary" href="{{ route('admin.agencies.create') }}">
                        Thêm
                    </a>
                </div>
            </div>

            <div class="table-responsive">
                <table class="table custom-table">
                    <thead>
                        <tr>
                            <th scope="col">
                                <label class="control control--checkbox">
                                    <input type="checkbox" class="js-check-all" />
                                    <div class="control__indicator"></div>
                                </label>
                            </th>
                            <th scope="col">#</th>
                            <th scope="col">Tên đơn vị</th>
                            <th scope="col">Địa chỉ</th>
                            <th scope="col">Thao tác</th>
                        </tr>
                    </thead>

                    <tbody class="table-content">
                        @foreach ($agencies as $index => $agency)
                            <tr>
                                <th scope="row">
                                    <label class="control control--checkbox">
                                        <input type="checkbox" name="ids[]" value="{{ $agency->id }}" />
                                        <div class="control__indicator"></div>
                                    </label>
                                </th>
                                <th scope="row">{{ $index + 1 }}</th>
                                <td style="max-width: 400px;">{{ $agency->name }}</td>
                                <td style="max-width: 400px;">{{ $agency->address }}</td>
                                <td>
                                    <div class="d-flex">
                                        <a class="btn btn-warning mr-2"
                                            href="{{ route('admin.agencies.edit', $agency->id) }}">
                                            <i class="fas fa-fw fa-pen"></i>
                                        </a>
                                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#deleteModal-{{ $agency->id }}">
                                            <i class="fas fa-fw fa-trash"></i>
                                        </button>
                                        <div class="modal fade" id="deleteModal-{{ $agency->id }}" tabindex="-1"
                                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Bạn có chắc muốn xoá đơn vị này?</p>
                                                        <p> [{{ $agency->name }}]</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-bs-dismiss="modal">Close</button>
                                                        <form class="ml-3" method="post"
                                                            action="{{ route('admin.agencies.destroy', $agency->id) }}">
                                                            @method('DELETE') @csrf
                                                            <button type="submit" class="btn btn-danger">
                                                                Xoá
                                                            </button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div class="pagination-wrapper d-flex justify-content-between">
                <div class="text">Hiển thị {{ $agencies->firstItem() }} từ {{ $agencies->lastItem() }} trong
                    {{ $agencies->total() }} dòng</div>
                <div class="pagination">{{ $agencies->withQueryString()->links() }}</div>
            </div>
        </div>

    </div>
@endsection

@push('scripts')
    <script src="{{ asset('admin/js/custom-table.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            // $.ajaxSetup({
            //     headers: {
            //         'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            //     }
            // });

            $("#buttonDeleteMany").click(function() {
                console.log('buttonDeleteMany clicked');

                const deleteRecords = $(
                    ".table-content tr .control--checkbox input[type=checkbox]:checked"
                );

                const deleteRecordsIds = deleteRecords.map(function(item) {
                        return parseInt($(this).val());
                    })
                    .get();

                console.log({
                    deleteRecordsIds
                });

                console.log("{{ route('admin.agencies.deleteMany') }}");

                $.ajax({
                    type: "DELETE",
                    url: {{ route('admin.agencies.deleteMany') }},
                    data: {
                        "ids": deleteRecordsIds,
                    },
                    dataType: "JSON",
                    success: function(response) {
                        console.log({
                            response
                        });
                    },
                });
            });
        });
    </script>
@endpush
