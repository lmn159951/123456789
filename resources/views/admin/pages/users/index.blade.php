@extends('admin.layouts.admin')

@section('content')
    <div class="container-fluid">
        <div class="shadow p-4 mb-5 bg-body rounded">
            <h1 class="text-center">Quản lý nhân viên</h1>

            @if (session('success'))
                <div class="alert alert-success text-center">
                    {{ session('success') }}
                </div>
            @endif

            <div class="my-3 d-flex justify-content-end">
                <a class="btn btn-primary" href="{{ route('quantri.nhanvien.create') }}">
                    Thêm
                </a>
            </div>

            <table class="table table-striped table-hover my-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên nhân viên</th>
                        <th scope="col">Tên tài khoản</th>
                        <th scope="col">Giới tính</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phòng ban</th>
                        <th scope="col">Chức vụ</th>
                        <th scope="col">Đơn vị</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($danhSachNhanVien as $index => $nhanVien)
                        <tr>
                            <th scope="row">{{ $index + 1 }}</th>
                            <td>{{ $nhanVien->ten_nhan_vien }}</td>
                            <td>{{ $nhanVien->ten_tai_khoan }}</td>
                            <td>{{ $nhanVien->gioi_tinh }}</td>
                            <td>{{ $nhanVien->so_dien_thoai }}</td>
                            <td>{{ $nhanVien->email }}</td>
                            {{-- <td>{{ $nhanVien->phongBan->ten_phong_ban }}</td>
                            <td>{{ $nhanVien->chucVu->ten_chuc_vu }}</td>
                            <td>{{ $nhanVien->donVi->ten_don_vi }}</td> --}}
                            <td>
                                <div class="d-flex">
                                    <a class="btn btn-warning"
                                        href="{{ route('quantri.nhanvien.edit', $nhanVien->ma_nhan_vien) }}">
                                        Cập nhật
                                    </a>
                                    <form class="ml-3" method="post"
                                        action="{{ route('quantri.nhanvien.destroy', $nhanVien->ma_nhan_vien) }}">
                                        @method('DELETE') @csrf
                                        <button type="submit" class="btn btn-danger"
                                            onclick="return confirm('Bạn có chắc muốn xoá nhân viên này?')">
                                            Xoá
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
@endsection
