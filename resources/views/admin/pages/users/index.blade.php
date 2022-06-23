@extends('admin.layouts.admin')

@push('styles')
    <link href="{{ asset('admin/fonts/icomoon/style.css') }}" rel="stylesheet">
@endpush

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h3 class="text-center">Quản lý nhân viên</h3>

            @if (session('message'))
                <div class="alert alert-success text-center">
                    {{ session('message') }}
                </div>
            @endif

            <table class="table table-hover my-3" id="table-content">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">
                            Họ tên
                        </th>
                        <th scope="col">
                            Tài khoản
                        </th>
                        <th scope="col">
                            Giới tính
                        </th>
                        <th scope="col">
                            Phòng ban
                        </th>
                        <th scope="col">
                            Chức vụ
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
            $('#table-content').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{!! route('admin.users.datatableApi') !!}',
                columnDefs: [{
                    targets: 0,
                    checkboxes: {
                        selectRow: true
                    }
                }],
                select: {
                    style: 'multi'
                },
                columns: [{
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'fullname',
                        name: 'fullname'
                    },
                    {
                        data: 'username',
                        name: 'username'
                    },
                    {
                        data: 'gender',
                        name: 'gender'
                    },
                    {
                        data: 'department.name',
                        name: 'department.name'
                    },
                    {
                        data: 'position.name',
                        name: 'position.name'
                    },
                    {
                        data: 'action',
                        targets: 6,
                        orderable: false,
                        searchable: false,
                        render: function(userId) {
                            const updateUrl = 'http://127.0.0.1:8000/admin/users/' + userId + '/edit';
                            const deleteUrl = 'http://127.0.0.1:8000/admin/users/' + userId;

                            return `
                                <div class="d-flex">
                                    <a class="btn btn-warning mr-2" href="${updateUrl}">
                                        <i class="fas fa-fw fa-pen"></i>
                                    </a>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="#deleteModal-${userId}">
                                        <i class="fas fa-fw fa-trash"></i>
                                    </button>
                                    <div class="modal fade" id="deleteModal-${userId}" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Hộp thoại xoá</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Bạn có muốn xoá người dùng này?</p>
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
        });
    </script>
@endpush
