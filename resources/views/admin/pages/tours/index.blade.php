@extends('admin.layouts.admin')

@push('styles')
    <link href="{{ asset('admin/vendor/datatable/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('admin/vendor/datatable/datatables.min.css') }}" rel="stylesheet" />
@endpush

@section('content')
    <div class="container-fluid">

        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-dark" id="exampleModalLabel">Hộp thoại xoá</h5>
                        <button type="button" class="close text-dark" data-dismiss="modal" aria-label="Đóng">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Bạn có muốn xoá tour này?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <form class="ml-3" method="post" action="">
                            @method('DELETE') @csrf
                            <button type="submit" class="btn btn-danger">
                                Xoá
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center" id="title">Quản lý tour</h3>

            @if (session('error'))
                <div class="alert alert-danger text-center" id="errorMessage">
                    {{ session('error') }}
                </div>
            @endif

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <div class="d-flex align-items-center justify-content-end my-2" id="buttonActions">

                <button type="button" id="buttonDeleteManyModel" class="btn btn-danger mr-2 d-none" data-toggle="modal"
                    data-target="#deleteAllModal">
                    Xoá đánh dấu
                </button>

                <div class="modal fade" id="deleteAllModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn xoá tour được đánh dấu không?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                <button type="button" class="btn btn-danger" id="buttonDeleteMany">
                                    Xoá đánh dấu
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <a class="btn btn-primary" href="{{ route('admin.tours.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover dt-responsive nowrap no-footer my-3" id="table-content" style="width:100%">
                <thead>
                    <tr>
                        <th scope="col">
                            #
                        </th>
                        <th scope="col">
                            Tên tour
                        </th>
                        <th scope="col">
                            Thời gian đăng ký
                        </th>
                        <th scope="col">
                            Thời gian kết thúc
                        </th>
                        <th scope="col">
                            Thời gian đi
                        </th>
                        <th scope="col">
                            Thời gian về
                        </th>
                        <th scope="col">
                            Giá tiền
                        </th>
                        <th scope="col">
                            Thao tác
                        </th>
                    </tr>
                </thead>

            </table>
        </div>

    </div>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('admin/vendor/moment/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/vendor/datatable/datatables.min.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            const table = $('#table-content').DataTable({
                responsive: true,
                processing: true,
                serverSide: true,
                colReorder: true,
                ajax: "{!! route('admin.tours.datatableApi') !!}",
                dom: '<"top pb-5"<"left-col"B><"right-col"f>><"clearfix">rt<"clearfix"><"bottom pb-5"<"left-col"i><"right-col"p>><"clearfix">',
                lengthMenu: [
                    [10, 25, 50, 100, 250, 500, -1],
                    ['10 dòng', '25 dòng', '50 dòng', '100 dòng', '250 dòng', '500 dòng', 'Tất cả']
                ],
                buttons: [{
                        extend: 'selectAll',
                    },
                    {
                        extend: 'selectNone',
                    },
                    {
                        extend: 'pageLength',
                    }
                ],
                language: {
                    url: "{!! asset('admin/vendor/datatable/vi.json') !!}",
                    buttons: {
                        selectAll: "Chọn hết",
                        selectNone: "Bỏ chọn"
                    },
                },
                select: true,
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex',
                    },
                    {
                        data: 'name',
                        name: 'name',
                        className: 'truncate',
                    },
                    {
                        data: 'registration_start_date',
                        name: 'registration_start_date',
                        "className": "text-left",
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'registration_end_date',
                        name: 'registration_end_date',
                        "className": "text-left",
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'tour_start_date',
                        name: 'tour_start_date',
                        "className": "text-left",
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'tour_end_date',
                        name: 'tour_end_date',
                        "className": "text-left",
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'price',
                        name: 'price',
                    },
                    {
                        data: 'action',
                        orderable: false,
                        searchable: false,
                        render: function(data) {
                            const response = JSON.parse(data);

                            console.log(response.id);

                            if (response.active == '0') {
                                return `
                                    <div class="d-flex">
                                        <a class="btn btn-info mr-2" href="http://127.0.0.1:8000/admin/tours/${response.id}">
                                            <i class="fas fa-fw fa-eye"></i>
                                        </a>
                                    </div>
                                `;
                            }

                            return `
                                <div class="d-flex">
                                    <a class="btn btn-warning text-white mr-2" href="http://127.0.0.1:8000/admin/tours/${response.id}/edit">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <a class="btn btn-info mr-2" href="http://127.0.0.1:8000/admin/tours/${response.id}">
                                        <i class="fas fa-fw fa-eye"></i>
                                    </a>

                                    <button type="button" id="button-delete" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal-${response.id}">
                                        <i class="fas fa-fw fa-trash"></i>
                                    </button>
                                </div>
                            `;
                        }
                    },
                ]
            });

            table.on('select', function(event, datatable, type, indexes) {
                if (type === 'row') {
                    $("#buttonDeleteManyModel").removeClass('d-none');
                    $("#buttonDeleteManyModel").text(
                        `Xoá đánh dấu (${table.rows({ selected: true }).count()})`
                    );

                    $("#buttonDeleteMany").text(
                        `Xoá đánh dấu (${table.rows({ selected: true }).count()})`
                    );
                }
            });

            table.on('deselect', function(event, datatable, type, indexes) {
                if (type === 'row') {
                    if (table.rows({
                            selected: true
                        }).count() === 0) {
                        $("#buttonDeleteManyModel").addClass('d-none');
                    }

                    $("#buttonDeleteManyModel").text(
                        `Xoá đánh dấu (${table.rows({ selected: true }).count()})`
                    );

                    $("#buttonDeleteMany").text(
                        `Xoá đánh dấu (${table.rows({ selected: true }).count()})`
                    );
                }
            });

            $(document).on('click', '#button-delete', function(event) {
                const id = $(this).attr('data-target').split('-')[1];
                $('#deleteModal form').attr('action', `http://127.0.0.1:8000/admin/tours/${id}`);
                $('#deleteModal').modal('show');
            });

            $("#buttonDeleteMany").click(function() {
                const selectedIds = table.rows({
                    selected: true
                }).data().pluck('id');
                const deleteRecordsIds = [];
                for (let i = 0; i < table.rows({
                        selected: true
                    }).count(); i++) {
                    deleteRecordsIds.push(selectedIds[i]);
                }

                $.ajax({
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: "{{ route('admin.tours.deleteMany') }}",
                    data: {
                        'ids': deleteRecordsIds,
                        '_method': 'delete'
                    },
                    success: function(response, textStatus, xhr) {
                        table.draw();
                        $('#deleteAllModal').modal('hide');
                        $("#buttonDeleteManyModel").addClass('d-none');
                    },
                    error: function(error) {
                        $('#deleteAllModal').modal('hide');

                        $('#errorMessage').remove();

                        $('#title').after(`
                            <div class="alert alert-danger text-center" id="errorMessage">
                                ${error.responseJSON.message}
                            </div>
                        `);
                    }
                });
            });
        });
    </script>
@endpush
