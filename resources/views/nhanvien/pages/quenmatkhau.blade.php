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
                        <h2>Quên Mật Khẩu</h2>
                    </div>
                </div>
            </div>
            <form action="{{ route('forgotpasswordPost') }}" method="POST">
                @csrf
                <div class="d-flex justify-content-center">
                    <div class="row">
                        <div class="txtnhapemail d-flex justify-content-center">
                            <input class="text-center" name="email" type="email" style="width: 100%" type="text"
                                placeholder="Nhập Email tại đây để xác thực">
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
            @if (Session::has('message'))
                <div class="row">
                    <p style="color: rgb(34, 172, 34); margin-top: -25px;">{{ Session::get('message') }}</p>
                </div>
            @endif
        </div>
    </div>
</body>

</html>
