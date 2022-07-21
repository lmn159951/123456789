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
                                    <li><a
                                            href="{{ route('search') . '?regionid=' . $recordRegion['id'] }}">{{ $recordRegion['name'] }}</a>
                                    </li>
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
                                <input type="text" required name="tourname" placeholder="Bạn hãy nhập tên tour"
                                    value="">
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
                        @if ($firstTour[0] == null)
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
                                    <a href="{{ url($firstTour[0]['description_file']) }}" class="primary-btn">XEM TOUR</a>
                                    <a href="{{ route('nhanvien.tourregis', $firstTour[0]['tour_id']) }}"
                                        class="primary-btn">ĐẶT TOUR</a>
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
                    @isset($slot)
                        @if (count($highlightTours) > 0)
                            @for ($i = 0; $i < count($highlightTours); $i++)
                                <div class="col-lg-3 col-md-4  mix vegetables fastfood">
                                    <div class="card">
                                        <div class="img">
                                            <a href="{{ url($highlightTours[$i]['description_file']) }}">
                                                <img alt="{{ $highlightTours[$i]['name'] }}" class="img-fluid"
                                                    src="{{ $highlightTours[$i]['image'] }}">
                                            </a>
                                        </div>
                                        <div class="card-body" style="height: 330px;">
                                            <h5 class="card-title card-text text-truncate">
                                                {{ $highlightTours[$i]['name'] }}
                                            </h5>
                                            <p class="card-text card-content">
                                                <strong>Thời gian đăng ký:</strong><br />
                                                {{ date_format(date_create($highlightTours[$i]['registration_start_date']), 'd-m-Y') }}
                                                -
                                                {{ date_format(date_create($highlightTours[$i]['registration_end_date']), 'd-m-Y') }}<br />
                                                <strong>Thời gian đi:</strong><br />
                                                {{ date_format(date_create($highlightTours[$i]['tour_start_date']), 'd-m-Y') }} -
                                                {{ date_format(date_create($highlightTours[$i]['tour_end_date']), 'd-m-Y') }}<br />
                                                <strong>Giá:</strong>
                                                {{ number_format($highlightTours[$i]['price'], 0, '.', ',') }}VNĐ
                                            </p>

                                            <div class="card-button" style="margin-top: 10px; margin-bottom: 10px;">
                                                <a href="{{ route('nhanvien.tourregis', $highlightTours[$i]['tour_id']) }}"><button
                                                        type="submit" class="site-btn">ĐẶT TOUR</button></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endfor
                        @endif
                    @endisset
                @endisset
            </div>
        </div>
    </section>
    <!-- Featured Section End -->
@endsection
