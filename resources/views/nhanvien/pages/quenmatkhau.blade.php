@extends('nhanvien.layout.nhanvien')
@section('content')
 <!-- Contact Form Begin -->
 <div class="contact-form spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact__form__title">
                    <h2>Quên Mật Khẩu</h2>
                </div>
            </div>
        </div>
        <form action="{{ route('forgotpasswordPost') }}" method="POST">
            @csrf
            <div class="d-flex justify-content-center">
                <div class="row">
                    <div class="txtnhapemail d-flex justify-content-center">
                        <input class="text-center" name="email" type="email" style="width: 100%" type="text" placeholder="Nhập Email tại đây để xác thực">
                    </div>
                    <div class="quenmatkhau d-flex justify-content-center">
                        <a href="{{ route('login') }}" class="txtquenmatkhau">Quay lại trang Đăng Nhập</a>
                    </div>    
                    <div class="col-lg-12 text-center">
                        <button type="submit" class="site-btn">Gửi đi</button>
                    </div>
                </div>
            </div>    
        </form>
        @if(Session::has('message'))
            <div class="row">
                <p style="color: rgb(34, 172, 34); margin-top: -25px;">{{ Session::get('message') }}</p>
            </div>
        @endif
    </div>
</div>
@endsection