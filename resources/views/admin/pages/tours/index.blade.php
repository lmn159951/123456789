@extends('admin.layouts.admin')

@push('styles')
    <link href="{{ asset('admin/fonts/icomoon/style.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/css/custom-table.css') }}" rel="stylesheet">
@endpush

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center">Quản lý tour</h3>

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
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn xoá tour được đánh dấu không?</p>
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



                <a class="btn btn-primary" href="{{ route('admin.tours.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-hover my-3" id="table-content">
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
                            Thời thời kết thúc
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
                            Số lượng người
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
    <script type="text/javascript">
        $(document).ready(function() {

            const table = $('#table-content').DataTable({
                responsive: true,
                processing: true,
                serverSide: true,
                ajax: "{!! route('admin.tours.datatableApi') !!}",
                dom: '<"left-col my-2"B><"clearfix"><"top my-2"<"left-col"l><"right-col"f>>rtip',
                buttons: [
                    'selectAll',
                    'selectNone'
                ],
                language: {
                    buttons: {
                        selectAll: "Chọn hết",
                        selectNone: "Bỏ chọn"
                    }
                },
                columnDefs: [{
                    type: 'date-dd-mmm-yyyy',
                    targets: [2, 3, 4, 5]
                }],
                select: true,
                columns: [{
                        data: 'id',
                        name: 'id',
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'tour_start_date',
                        name: 'tour_start_date',
                        width: '75px',
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'tour_end_date',
                        name: 'tour_end_date',
                        width: '75px',
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'registration_start_date',
                        name: 'registration_start_date',
                        width: '75px',
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'registration_end_date',
                        name: 'registration_end_date',
                        width: '75px',
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'price',
                        name: 'price'
                    },
                    {
                        data: 'max_people',
                        name: 'max_people'
                    },
                    {
                        data: 'action',
                        targets: 7,
                        orderable: false,
                        searchable: false,
                        render: function(tourId) {
                            const updateUrl = 'http://127.0.0.1:8000/admin/tours/' + tourId +
                                '/edit';
                            const deleteUrl = 'http://127.0.0.1:8000/admin/tours/' + tourId;
                            const showUrl = 'http://127.0.0.1:8000/admin/tours/' + tourId;

                            return `
                                <div class="d-flex">
                                    <a class="btn btn-warning text-white mr-2" href="${updateUrl}">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <a class="btn btn-info mr-2" href="${showUrl}">
                                        <i class="fas fa-fw fa-eye"></i>
                                    </a>

                                    <button type="button" class="btn btn-danger" data-toggle="modal"
                                        data-target="#deleteModal-${tourId}">
                                        <i class="fas fa-fw fa-trash"></i>
                                    </button>

                                    <div class="modal fade" id="deleteModal-${tourId}" tabindex="-1" role="dialog"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Bạn có muốn xoá người dùng này?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal">Close</button>
                                                    <form class="ml-3" method="post"
                                                        action="${deleteUrl}">
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
                            `;
                        }
                    }
                ]
            });

            table.on('select', function(event, datatable, type, indexes) {
                if (type === 'row') {
                    $("#buttonDeleteManyModel").removeClass('d-none');
                    $("#buttonDeleteManyModel").text(
                        `Xoá đánh dấu (${indexes.length})`
                    );

                    $("#buttonDeleteMany").text(
                        `Xoá đánh dấu (${indexes.length})`
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
                }
            });

            $(document).on('click', '.js-check-all', function() {

                if ($(this).prop("checked")) {
                    $('tr input[type="checkbox"]').each(function() {
                        $(this).prop("checked", true);
                        $(this).closest("tr").addClass("active");
                    });
                } else {
                    $('tr input[type="checkbox"]').each(function() {
                        $(this).prop("checked", false);
                        $(this).closest("tr").removeClass("active");
                    });
                }
            });

            $(document).on('change', 'tr input[type="checkbox"]', function() {
                if ($('tr input.table-checkbox[type="checkbox"]').length === $(
                        'tr input.table-checkbox[type="checkbox"]:checked').length) {
                    $('.js-check-all').prop('checked', true);
                } else {
                    $('.js-check-all').prop('checked', false);
                }
            });

            $(document).on("click", 'th[scope="row"] input[type="checkbox"]', function() {
                if ($(this).closest("tr").hasClass("active")) {
                    $(this).closest("tr").removeClass("active");
                } else {
                    $(this).closest("tr").addClass("active");
                }
            });

            $(document).on('change', ".control--checkbox input[type=checkbox]", function(event) {
                const deleteRecords = $(
                    "tbody tr .control--checkbox input[type=checkbox]:checked"
                );

                const deleteRecordsLength = deleteRecords.length;

                console.log({
                    deleteRecordsLength
                });

                if (deleteRecordsLength >= 1) {
                    $("#buttonDeleteManyModel").removeClass('d-none');
                    $("#buttonDeleteManyModel").text(
                        `Xoá đánh dấu (${deleteRecordsLength})`
                    );

                    $("#buttonDeleteMany").text(
                        `Xoá đánh dấu (${deleteRecordsLength})`
                    );
                } else {
                    $("#buttonDeleteManyModel").addClass('d-none');
                }
            });

            $("#buttonDeleteMany").click(function() {
                const deleteRecords = $(
                    "tbody tr .control--checkbox input[type=checkbox]:checked"
                );

                const deleteRecordsIds = deleteRecords.map(function(item) {
                    return parseInt($(this).val());
                }).get();

                console.log({
                    deleteRecordsIds
                });

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
                        $('#deleteAllModal').modal('hide');
                        tableContent.draw();
                        $('.js-check-all').prop('checked', false);
                        $("#buttonDeleteManyModel").addClass('d-none');
                    }
                });
            });

            $('table tr:first').removeClass(['sorting_disabled', 'sorting_asc'])
        });
    </script>

    {{-- <script src="{{ asset('admin/js/custom-table.js') }}"></script> --}}
@endpush
