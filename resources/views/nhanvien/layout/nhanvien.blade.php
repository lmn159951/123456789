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
    <link rel="stylesheet" href="{{ asset('nhanvien/css/font-awesome.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/elegant-icons.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/nice-select.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/jquery-ui.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/owl.carousel.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/slicknav.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('nhanvien/css/style.css') }}" type="text/css">
</head>

<body>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="{{ route('home') }}">
                <h2>GO TRAVEL</h2>
            </a>
        </div>

        <div class="humberger__menu__widget">

            <div class="header__top__right__auth">
                @guest
                    <a href="{{ route('login') }}"><i></i>Đăng nhập</a>
                @endguest
                {{-- @auth --}}
                {{-- <div class="dropdown">
                    <a href="#"><i class="fa fa-user"></i> Xin chào {{ Auth::user()->fullname }}</a>
                    <div class="dropdown-content">
                        <a href="{{ route('nhanvien.thong-tin-ca-nhan.index') }}"><i></i> Thông tin cá nhân</a>
                        <a href="{{ route('nhanvien.thay-doi-mat-khau.index') }}"><i></i> Thay đổi mật khẩu</a>
                        <a href="{{ route('nhanvien.logout') }}"><i></i> Đăng xuất</a>
                    </div> --}}
                {{-- @endauth --}}
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <br><br>
                @auth
                    <li><a href="{{ route('home') }}">Trang chủ</a></li>
                    <li><a href="{{ route('alltour') }}">Tất cả tour du lịch</a></li>
                    <li><a href="{{ route('search') }}">Tìm kiếm</a></li>
                    <li><a href="{{ route('contact') }}">Liên hệ</a></li>
                    <li><a href="{{ route('nhanvien.thong-tin-ca-nhan.index') }}">Thông tin cá nhân</a></li>
                    <li><a href="{{ route('nhanvien.thay-doi-mat-khau.index') }}">Thay đổi mật khẩu</a></li>
                    <li><a href="{{ route('nhanvien.tourhistory') }}">Lịch sử đặt tour</a></li>
                    @if (Auth::user()->is_admin === 1)
                        <li><a href="{{ route('admin.dashboard') }}">Trang quản trị</a></li>
                        <li><a href="{{ route('admin.auth.logout') }}">Đăng xuất</a></li>
                    @else
                        <li><a href="{{ route('nhanvien.logout') }}"> Đăng xuất</a></li>
                    @endif
                @endauth
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>

        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> travel?@gmail.vn</li>
                <li>Chào mừng bạn đã đến với Go Travel</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> travel?@gmail.vn</li>
                                <li>Chào mừng bạn đã đến với Go Travel</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                @auth
                                    <div class="dropdown">
                                        <a href="{{ route('nhanvien.thong-tin-ca-nhan.index') }}"><i
                                                class="fa fa-user"></i>
                                            Xin chào {{ Auth::user()->fullname }}
                                        </a>
                                        <div class="dropdown-content">
                                            <a href="{{ route('nhanvien.thong-tin-ca-nhan.index') }}"> Thông
                                                tin
                                                cá nhân</a>
                                            <a href="{{ route('nhanvien.thay-doi-mat-khau.index') }}"> Thay đổi mật
                                                khẩu</a>
                                            <a href="{{ route('nhanvien.tourhistory') }}"> Lịch sử đặt tour</a>
                                            @if (Auth::user()->is_admin === 1)
                                                <a href="{{ route('admin.dashboard') }}">Trang quản trị</a>
                                                <a href="{{ route('admin.auth.logout') }}">Đăng xuất</a>
                                            @else
                                                <a href="{{ route('nhanvien.logout') }}"> Đăng xuất</a>
                                            @endif

                                        </div>
                                    </div>
                                @endauth

                                @guest
                                    <a href="{{ route('login') }}">Đăng nhập</a>
                                @endguest

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="{{ route('home') }}">
                            <h2>GO TRAVEL</h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="{{ Request::routeIs('nhanvien.') ? 'active' : '' }}"><a
                                    href="{{ route('home') }}">Trang chủ</a></li>
                            <li class="{{ Request::routeIs('alltour') ? 'active' : '' }}"><a
                                    href="{{ route('alltour') }}">Tất cả các tour</a></li>
                            <li class="{{ Request::routeIs('search') ? 'active' : '' }}"><a
                                    href="{{ route('search') }}">Tìm kiếm</a></li>
                            <li class="{{ Request::routeIs('contact') ? 'active' : '' }}"><a
                                    href="{{ route('contact') }}">Liên hệ</a></li>

                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">

                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->


    <!-- End Header -->

    @yield('content')

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="#">
                                <h2>GO TRAVEL</h2>
                            </a>
                        </div>
                        <ul>
                            <li>Địa chỉ: phường 5,Mỹ Tho-Tiền Giang</li>
                            <li>Số điện thoại: +84.376.97.4917</li>
                            <li>Email: travel@gmail.vn</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Thời gian hoạt động</h6>
                        <p>Thứ hai - Thứ sáu: 07.30 đến 17.00</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Tham gia bản tin của chúng tôi ngay bây giờ</h6>
                        <p>Nhận thông tin cập nhật qua Email về các tour mới nhất của chúng tôi.</p>
                        <form action="#">
                            <input type="text" placeholder="Nhập Email của bạn">
                            <button type="submit" class="site-btn">Đăng ký</button>
                        </form>
                        <div class="footer__widget__social">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->


    <!-- Js Plugins -->
    <script src="{{ asset('nhanvien/js/jquery-3.3.1.min.js') }}"></script>
    <script src="{{ asset('nhanvien/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('nhanvien/js/jquery.nice-select.min.js') }}"></script>
    <script src="{{ asset('nhanvien/js/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('nhanvien/js/jquery.slicknav.js') }}"></script>
    <script src="{{ asset('nhanvien/js/mixitup.min.js') }}"></script>
    <script src="{{ asset('nhanvien/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('nhanvien/js/main.js') }}"></script>


</body>

</html>
