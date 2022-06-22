@extends('nhanvien.layout.nhanvien')
@section('content')
<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Tất cả các tour</h2>
                </div>
                
            </div>
        </div>
        <div class="row featured__filter">
            @isset($allTours)
            @if(count($allTours) > 0)
                    @foreach ($allTours as $tour)
                        <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                            <div class="featured__item">
                                <div class="featured__item__pic set-bg" data-setbg="{{ $tour->image }}">
                                    <ul class="featured__item__pic__hover">
                                        <li><a href="#">Đặt tour</a></li>
                                    </ul>
                                </div>
                                <div class="featured__item__text">
                                    <h6><a href="#">algorithem</a></h6>
                                    <h5>{{ number_format($tour->price, 0, '', '.') }} VNĐ</h5>
                                </div>
                            </div>
                        </div>
                    
                    @endforeach
        </div>
            @else
            <div class="hero__item set-bg" data-setbg="">
                <div class="hero__text">
                    <h2>HIỆN KHÔNG CÓ TOUR NÀO PHÙ HỢP VỚI BẠN</h2>
                </div>
            </div>
            @endif
        @endisset
        
    </div>
</section>
<!-- Featured Section End -->
@endsection