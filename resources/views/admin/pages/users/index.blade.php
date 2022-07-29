@extends('admin.layouts.admin')

@section('content')
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-dark" id="exampleModalLabel">Hộp thoại xoá</h5>
                    <button type="button" class="close text-dark" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Bạn có muốn xoá người dùng này?</p>
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

    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center" id="title">Quản lý nhân viên</h3>

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
                                <p>Bạn có chắc muốn xoá người dùng được đánh dấu không?</p>
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

                {{-- <button type="button" id="buttonSearchModel" class="btn btn-secondary mr-2" data-toggle="modal"
                    data-target="#searchModal">
                    Tìm kiếm
                </button>

                <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="SearchModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="SearchModalLabel">Hộp thoại tìm kiếm</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form method="POST" action="{{ route('admin.users.search') }}">
                                @csrf

                                <div class="modal-body">
                                    <div class="row mx-2 mb-3">
                                        <label for="agency_id" class="form-label">Đơn vị:</label>

                                        <select id="agency_id" class="form-control" name="agency_id">
                                            <option value="">------------------------------------Không
                                                chọn------------------------------------</option>
                                            @foreach ($agencies as $agency)
                                                <option value="{{ $agency->id }}">{{ $agency->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="row mx-2 mb-3">
                                        <label for="department_id" class="form-label">Phòng ban:</label>

                                        <select id="department_id" class="form-control" name="department_id">
                                            <option value="">------------------------------------Không
                                                chọn------------------------------------</option>
                                            @foreach ($departments as $department)
                                                <option value="{{ $department->id }}">{{ $department->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="row mx-2 mb-3">
                                        <label for="position_id" class="form-label">Chức vụ:</label>

                                        <select id="position_id" class="form-control" name="position_id">
                                            <option value="">------------------------------------Không chọn------------------------------------</option>
                                            @foreach ($positions as $position)
                                                <option value="{{ $position->id }}">{{ $position->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                    <button type="submit" class="btn btn-info">
                                        Tìm kiếm
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div> --}}

                <a class="btn btn-primary" href="{{ route('admin.users.create') }}">
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
                            Họ tên
                        </th>
                        <th scope="col">
                            Giới tính
                        </th>
                        <th scope="col">
                            Số điện thoại
                        </th>
                        <th scope="col">
                            CMND/CCCD
                        </th>
                        <th scope="col">
                            Ngày vào làm
                        </th>
                        <th scope="col">
                            Ngày sinh
                        </th>
                        <th scope="col">
                            Thao tác
                        </th>
                        <th scope="col">
                            Tài khoản
                        </th>
                        <th scope="col">
                            Email
                        </th>
                        <th scope="col">
                            Đơn vị
                        </th>
                        <th scope="col">
                            Phòng ban
                        </th>
                        <th scope="col">
                            Chức vụ
                        </th>
                        <th scope="col">
                            Vai trò
                        </th>
                    </tr>
                </thead>

            </table>
        </div>

    </div>
@endsection

@push('styles')
    <link href="{{ asset('admin/vendor/datatable/datatables.min.css') }}" rel="stylesheet" />
@endpush

@push('scripts')
    <script type="text/javascript" src="{{ asset('admin/vendor/moment/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/vendor/datatable/datatables.min.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            const table = $('#table-content').DataTable({
                responsive: true,
                processing: true,
                serverSide: true,
                fixedHeader: true,
                colReorder: true,
                ajax: {
                    url: "{!! route('admin.users.index') !!}",
                    data: function(data) {
                        data.agency_id = $('#agency_id').val();
                        data.department_id = $('#department_id').val();
                        data.position_id = $('#position_id').val();
                    }
                },
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
                        data: 'fullname',
                        name: 'fullname',
                        width: '50%'
                    },
                    {
                        data: 'gender',
                        name: 'gender'
                    },
                    {
                        data: 'phone',
                        name: 'phone'
                    },
                    {
                        data: 'citizen_card',
                        name: 'citizen_card'
                    },
                    {
                        data: 'start_date',
                        name: 'start_date',
                        width: '75px',
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'birthday',
                        name: 'birthday',
                        width: '75px',
                        render: function(datetime) {
                            const timestamps = Math.round(new Date(datetime).getTime() / 1000);
                            return `<td data-sort="${timestamps}">${moment(new Date(datetime)).format("DD/MM/YYYY")}</td>`;
                        }
                    },
                    {
                        data: 'action',
                        orderable: false,
                        searchable: false,
                        className: 'not-export',
                        render: function(id) {
                            return `
                                <div class="d-flex">
                                    <a class="btn btn-warning text-white mr-2" href="http://127.0.0.1:8000/admin/users/${id}/edit">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <a class="btn btn-info mr-2" href="http://127.0.0.1:8000/admin/users/${id}">
                                        <i class="fas fa-fw fa-eye"></i>
                                    </a>

                                    <button type="button" id="button-delete" class="btn btn-danger" data-toggle="modal"
                                        data-target="#deleteModal-${id}">
                                        <i class="fas fa-fw fa-trash"></i>
                                    </button>

                                    <a class="btn btn-secondary ml-2" href="http://127.0.0.1:8000/admin/users/resetPassword/${id}">
                                        <i class="fas fa-fw fa-sync-alt"></i>
                                    </a>
                                </div>
                            `;
                        }
                    },
                    {
                        data: 'username',
                        name: 'username'
                    },
                    {
                        data: 'email',
                        name: 'email'
                    },
                    {
                        data: 'agency',
                        name: 'agency'
                    },
                    {
                        data: 'department',
                        name: 'department'
                    },
                    {
                        data: 'position',
                        name: 'position'
                    },
                    {
                        data: 'is_admin',
                        name: 'is_admin',
                        render: function(isAdmin) {
                            return isAdmin ? 'ADMIN' : 'USER';
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
                $('#deleteModal form').attr('action', `http://127.0.0.1:8000/admin/users/${id}`);
                $('#deleteModal').modal('show');
            });

            function loadDepartmentsByAgencyId(agencyId) {
                return $.ajax({
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: "{!! route('admin.departments.findByAgencyId') !!}",
                    data: {
                        'agencyId': agencyId,
                    },
                    success: function(response, textStatus, xhr) {
                        const innertHtml = response.departments.reduce(function(total,
                                department) {
                                return total +
                                    `<option value="${department.id}">${department.name}</option>`;
                            },
                            '<option value="">------------------------------------Không chọn------------------------------------</option>'
                        );
                        $('select#department_id').html(innertHtml);
                    }
                });
            }

            function loadPositionsByDepartmentId(departmentId) {
                return $.ajax({
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: "{!! route('admin.positions.findByDepartmentId') !!}",
                    data: {
                        'department_id': departmentId,
                    },
                    success: function(response, textStatus, xhr) {
                        const innertHtml = response.positions.reduce(function(total, position) {
                                return total +
                                    `<option value="${position.id}">${position.name}</option>`;
                            },
                            '<option value="">------------------------------------Không chọn------------------------------------</option>'
                        );
                        $('select#position_id').html(innertHtml);
                    }
                });
            }

            (function loadDefaultData() {
                if (getUrlParameter('agency_id')) {
                    const agencySelectElement = $('select#agency_id option[value="' + getUrlParameter(
                        'agency_id') + '"]');
                    agencySelectElement.attr("selected", "selected");
                    loadDepartmentsByAgencyId(agencySelectElement.val()).then(function(response) {
                        if (getUrlParameter('department_id')) {
                            const departmentSelectElement = $('select#department_id option[value="' +
                                getUrlParameter('department_id') + '"]');
                            departmentSelectElement.attr("selected", "selected");
                            loadPositionsByDepartmentId(departmentSelectElement.val()).then(function(
                                response) {
                                if (getUrlParameter('position_id')) {
                                    const positionSelectElement = $(
                                        'select#position_id option[value="' +
                                        getUrlParameter('position_id') + '"]');
                                    positionSelectElement.attr("selected", "selected");
                                }
                            });
                        }
                    });
                }
            })();

            $('select#agency_id').on('change', function() {
                loadDepartmentsByAgencyId(this.value);
            });

            $('select#department_id').on('change', function() {
                loadPositionsByDepartmentId(this.value);
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
                    url: "{{ route('admin.users.deleteMany') }}",
                    data: {
                        'ids': deleteRecordsIds,
                        '_method': 'delete'
                    },
                    success: function(response, textStatus, xhr) {
                        table.draw();
                        $('#deleteAllModal').modal('hide');

                        console.log('deleteMany success');
                        console.log({
                            message: response.message
                        });

                        $('#errorMessage').remove();
                        $('.alert.alert-success').remove();

                        $('#title').after(`
                            <div class="alert alert-success text-center">
                                ${response.message}
                            </div>
                        `);
                    },
                    error: function(error) {
                        $('#deleteAllModal').modal('hide');

                        $('#errorMessage').remove();
                        $('.alert.alert-success').remove();

                        console.log(`
                            <div class="alert alert-danger text-center" id="errorMessage">
                                ${error.responseJSON.message}
                            </div>
                        `);

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
