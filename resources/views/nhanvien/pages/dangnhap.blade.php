<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="referrer" content="strict-origin-when-cross-origin" />
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="{{ URL::asset('favicon.ico') }}" type="image/x-icon" />
    <title>Go Travel</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{ asset('nhanvien/css/bootstrap.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/style.css') }}" type="text/css">
</head>

<body class="background-login">

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


</body>

</html>
