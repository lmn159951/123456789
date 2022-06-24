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

            <div class="d-flex align-items-center justify-content-end my-3">
                <button type="button" class="btn btn-danger mr-2 d-none" id="buttonDeleteManyModel" data-toggle="modal"
                    data-target="#deleteManyModel">
                    Xoá đánh dấu
                </button>

                <div class="modal fade" id="deleteManyModel" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn xoá đơn vị được đánh dấu không?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                    Đóng
                                </button>
                                <button type="button" class="btn btn-danger" id="buttonDeleteMany">
                                    Xoá đánh dấu
                                </button>
                            </div>
                        </div>
                    </div>
                </div>


                <a class="btn btn-primary" href="{{ route('admin.agencies.create') }}">
                    Thêm
                </a>
            </div>
            <table class="table table-hover my-3" id="table-content">
                <thead>
                    <tr>
                        <th scope="col" data-orderable="false">
                            <label class="control control--checkbox">
                                <input type="checkbox" class="js-check-all" />
                                <div class="control__indicator"></div>
                            </label>
                        </th>
                        <th scope="col">#</th>
                        <th scope="col">
                            Tên đơn vị
                        </th>
                        <th scope="col">
                            Địa chỉ
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

            const tableContent = $('#table-content').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{!! route('admin.agencies.datatableApi') !!}",
                columns: [{
                        data: 'checkbox',
                        name: 'checkbox',
                        orderable: false,
                        searchable: false,
                    },
                    {
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'address',
                        name: 'address'
                    },
                    {
                        data: 'action',
                        orderable: false,
                        searchable: false,
                        render: function(agencyId) {
                            const updateUrl = 'http://127.0.0.1:8000/admin/agencies/' + agencyId +
                                '/edit';
                            const deleteUrl = 'http://127.0.0.1:8000/admin/agencies/' + agencyId;

                            return `
                                <div class="d-flex">
                                    <a class="btn btn-warning mr-2" href="${updateUrl}">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>

                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal${agencyId}">
                                        <i class="fas fa-fw fa-trash"></i>
                                    </button>

                                    <div class="modal fade" id="exampleModal${agencyId}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Bạn có muốn xoá đơn vị này?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
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
                    url: "{{ route('admin.agencies.deleteMany') }}",
                    data: {
                        'ids': deleteRecordsIds,
                        '_method': 'delete'
                    },
                    success: function(response, textStatus, xhr) {
                        $('#deleteManyModel').modal('toggle');
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
