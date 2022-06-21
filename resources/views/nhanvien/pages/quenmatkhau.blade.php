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
                        <input type="email" style="width: 100%" type="text" placeholder="Nhập Email tại đây để xác thực">
                    </div>
                    @error('message')
                    <div>
                        <p style="color: red; margin-top: -25px;">{{ $message }}</p>
                    </div>
                    @enderror
                    <div class="quenmatkhau d-flex justify-content-center">
                        <a href="#" class="txtquenmatkhau">Quay lại trang Đăng Nhập</a>
                    </div>    
                    <div class="col-lg-12 text-center">
                        <button type="submit" class="site-btn">Gửi đi</button>
                    </div>
                </div>
            </div>    
        </form>
    </div>
</div>
@endsection