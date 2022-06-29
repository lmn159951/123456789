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
                                <li><a href="{{ route('search')."?regionid=".$recordRegion['id'] }}">{{ $recordRegion['name'] }}</a></li>
                            @endforeach
                        @endisset
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="{{ route('search') }}" method="GET">
                            <input type="hidden" required name="regionid" value="null">
                            <input type="text" required name="tourname" placeholder="Bạn hãy nhập tên tour" value="">
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
                                            <span>TOUR</span>
                                            <h2>{{ $firstTour[0]['name'] }}</h2>
                                            <a href="{{ $firstTour[0]['description_file'] }}" class="primary-btn">XEM TOUR</a>
                                            <a href="{{ route('nhanvien.tourregis', $firstTour[0]['tour_id']) }}" class="primary-btn">ĐẶT TOUR</a>
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
                        @for($i=1; $i<=count($highlightTours); $i++)
                        <div class="col-lg-3 col-md-4  mix vegetables fastfood text-center">
                            <div class="featured__item" style="margin-top: 10px;">
                                <div class="img">
                                    <a href="{{ $highlightTours[$i]['description_file'] }}">
                                        <img alt="{{ $highlightTours[$i]['name'] }}" class="img-fluid" src="{{ $highlightTours[$i]['image'] }}">
                                    </a>
                                </div>
                                <div class="featured__item__text text-left">
                                    <h6 style="font-size: 30px;"><a href="{{ $highlightTours[$i]['description_file'] }}">{{ Str::limit($highlightTours[$i]['name'], 25, '...') }}</a></h6>
                                    <h5>Ngày Bắt Đầu: {{ date_format(date_create($highlightTours[$i]['tour_start_date']),"d-m-Y") }}</h5>
                                    <h5>Số Lượng: {{ $slot[$i] }}/{{ $highlightTours[$i]['max_people'] }}</h5>
                                    <h5>Giá: {{ number_format($highlightTours[$i]['price'], 0, '.', ',') }}VNĐ</h5>
                                </div> 
                                <div class="col-lg-12 text-center" style="margin-top: 10px; margin-bottom: 10px;">
                                    <a href="{{ route('nhanvien.tourregis', $highlightTours[$i]['tour_id']) }}"><button type="submit" class="site-btn">ĐẶT TOUR</button></a>
                                </div>
                            </div>   
                        </div> 
                        @endfor
                @endif
                @endisset
        </div>
        </div>
    </section>
    <!-- Featured Section End -->
@endsection
   
    