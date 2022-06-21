@extends('nhanvien.layout.nhanvien')
@section('content')
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
            @isset($highlightTours)
                @if(count($highlightTours) > 0)
                        @foreach ($highlightTours as $highlightTour)
                        <div class="row featured__filter">
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
                        </div>
                        @endforeach
                @endif
            @endisset
            
        </div>
    </section>
    <!-- Featured Section End -->
@endsection
   
    