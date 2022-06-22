@extends('nhanvien.layout.nhanvien')
@section('content')
<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Địa điểm du lịch</span>
                    </div>
                    <ul>
                        @isset($recordsRegions)
                            @foreach ($recordsRegions as $recordRegion)
                                <li><a href="#">{{ $recordRegion['name'] }}</a></li>
                            @endforeach
                        @endisset
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Bạn muốn tìm kiếm gì?">
                            <button type="submit" class="site-btn">Tìm kiếm</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+84.376.97.4917</h5>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
                @isset($firstTour)
                            @if(count($firstTour)==0)
                            <div class="hero__item set-bg" data-setbg="">
                                <div class="hero__text">
                                    <h2>HIỆN KHÔNG CÓ TOUR NÀO PHÙ HỢP VỚI BẠN</h2>
                                </div>
                            </div>
                            @else
                            <div class="hero__item set-bg" data-setbg="{{ $firstTour[0]['image'] }}">
                                <div class="hero__text">
                                            <span>TOUR DU LỊCH</span>
                                            <h2>{{ $firstTour[0]['name'] }}</h2>
                                            <a href="#" class="primary-btn">XEM TOUR</a>
                                            <a href="#" class="primary-btn">ĐẶT TOUR</a>
                                </div>
                            </div>
                            @endif
                @endisset
                
            </div>
        </div>
    </div>
</section>
    <!-- Hero Section End -->
    
    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Các Tour Nổi Bật</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                @isset($highlightTours)
                @if(count($highlightTours) > 0)
                        @foreach ($highlightTours as $highlightTour)
                            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                                <div class="featured__item">
                                    <div class="featured__item__pic set-bg" data-setbg="{{ $highlightTour['image'] }}">
                                        <ul class="featured__item__pic__hover">
                                            <li><a href="#">Đặt tour</a></li>
                                        </ul>
                                    </div>
                                    <div class="featured__item__text">
                                        <h6><a href="#">{{ $highlightTour['name'] }}</a></h6>
                                        <h5>{{ number_format($highlightTour['price'], 0, '', '.') }} VNĐ</h5>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                @endif
                @endisset
            </div>
        </div>
    </section>
    <!-- Featured Section End -->
@endsection
   
    