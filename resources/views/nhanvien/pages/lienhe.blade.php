@extends('nhanvien.layout.nhanvien')
@section('content')
    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>Số điện thoại</h4>
                        <p>+84.376.97.4917</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>Địa chỉ</h4>
                        <p>phường 5,Mỹ Tho-Tiền Giang</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Thời gian hoạt động</h4>
                        <p>Thứ hai - Thứ sáu: 07.30am to 17.00pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Email</h4>
                        <p>travel@gmail.vn</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->


    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Đóng góp ý kiến</h2>
                    </div>
                </div>
            </div>
            <form action="{{ route('sendmail') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Họ và tên" required name="name">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="email" placeholder="Email" required name="email">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="Ý kiến của bạn là..." required name="comment"></textarea>
                        <button type="submit" class="site-btn">GỬI Ý KIẾN</button>
                        @if(session('message') )
                            <p style="color: #7fad39">{{ session('message')  }}</p>
                        @endif
                        
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->
@endsection
