@extends('nhanvien.layout.nhanvien')
@section('content')
<div class="contact-form spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact__form__title">
                    <h2>Thay Đổi Mật Khẩu</h2>
                </div>
            </div>
        </div>
        @isset($token)
        <form action="{{ route('recoveryaccountPost') }}" method="POST">
            @csrf
            <div class="d-flex justify-content-center">
                <div class="row">
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
                    <div class="col-5"><p>Nhập lại mật khẩu: <span class="dau_">(*)</span></p></p></div>
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
                    

                    <input type="hidden" value="{{ $token }}" name="user_token">
                    <div class="col-lg-12 text-center">
                        <button type="submit" class="site-btn">CẬP NHẬT</button>
                    </div>
                </div>
            </div>    
        </form>
        @endisset
    </div>
</div>
@endsection