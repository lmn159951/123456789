@extends('nhanvien.layout.nhanvien')
@section('content')
    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Đăng Nhập Tài Khoản</h2>
                    </div>
                </div>
            </div>
            <form action="{{ route('loginPost') }}" method="POST">
                @csrf
                <div class="d-flex justify-content-center">
                    <div class="row">
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input type="text" placeholder="Tên tài khoản" required name="username">
                        </div>
                        <div class="password d-flex justify-content-center">
                            <input type="password" placeholder="Mật khẩu" required name="password">
                        </div>
                        <div class="quenmatkhau d-flex justify-content-center">
                            <a href="{{ route('forgotpassword') }}" class="txtquenmatkhau">Quên mật khẩu</a>
                        </div>
                        <div class="col-lg-12 text-center">
                            <button type="submit" class="site-btn">ĐĂNG NHẬP</button>
                            @isset($message)
                                <div class="d-flex justify-content-center">
                                    <div class="alert alert-danger mt-3 w-50" role="alert">
                                        {{ $message }}
                                    </div>
                                </div>
                            @endisset
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
