@extends('nhanvien.layout.nhanvien')
@section('content')
     <!-- Contact Form Begin -->
     <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Thay Đổi Mật Khẩu</h2>
                    </div>
                </div>
            </div>
            <form action="{{ route('nhanvien.thay-doi-mat-khau.edit', Auth::user()->id) }}" method="POST">
                @csrf
                @method('HEAD')
                <div class="d-flex justify-content-center">
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="col-5"><p>Mật khẩu cũ: <span class="dau_">(*)</span></p></p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input type="password" placeholder="" name="oldPassword" required>
                        </div>

                        @error('oldPassword')
                        <div class="col-3"></div>
                        <div class="col-5" style="margin-top: -25px;">
                            <p style="color: red;">*{{ $message }}</p></div>
                        <div class="col-4"></div>
                        @enderror


                        <div class="col-3"></div>
                        <div class="col-5"><p>Mật khẩu mới: <span class="dau_">(*)</span></p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input type="password" placeholder="" name="newPassword" required>
                        </div>

                        @error('newPassword')
                        <div class="col-3"></div>
                        <div class="col-5" style="margin-top: -25px;">
                            <p style="color: red;">*{{ $message }}</p></div>
                        <div class="col-4"></div>
                        @enderror



                        <div class="col-3"></div>
                        <div class="col-5"><p>Nhập lại mật khẩu:<span class="dau_">(*)</span></p></p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input type="password" placeholder="" name="confirmNewPassword" required>
                        </div>

                        @error('confirmNewPassword')
                        <div class="col-3"></div>
                        <div class="col-5" style="margin-top: -25px;">
                            <p style="color: red;">*{{ $message }}</p></div>
                        <div class="col-4"></div>
                        @enderror



                        <div class="col-lg-12 text-center">
                            <button type="submit" class="site-btn">LƯU</button>
                        </div>

                        @if(Session::has('error'))
                        <div class="col-4"></div>
                        <div class="col-4 d-flex justify-content-center mt-3">
                            <div class="alert alert-danger" role="alert">{{ Session::get('error') }}</div>
                        </div>
                        <div class="col-4"></div>
                        @endisset
                        @if(Session::has('message'))
                        <div class="col-4"></div>
                        <div class="col-4 d-flex justify-content-center mt-3">
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        </div>
                        <div class="col-4"></div>
                        @endisset
                    </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
