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
            @if(count($allTours) == 0)
                <div class="hero__item set-bg" data-setbg="">
                    <div class="hero__text">
                        <h2>KHÔNG CÓ KẾT QUẢ</h2>
                    </div>
                </div>
        
            @else
                @php
                    $i=0;
                @endphp
                @foreach ($allTours as $tour)
                    <div class="col-lg-3 col-md-4  mix vegetables fastfood text-center">
                        <div class="featured__item" style="margin-top: 10px;">
                            <div class="img">
                                <a href="{{ $tour->description_file }}">
                                    <img alt="{{ $tour->name }}" class="img-fluid" src="{{ $tour->image }}">
                                </a>
                            </div>
                            <div class="featured__item__text text-left">
                                <h6 style="font-size: 30px;"><a href="{{ $tour->description_file }}">{{ Str::limit($tour->name, 25, '...') }}</a></h6>
                                <h5>Ngày Bắt Đầu: {{ date_format(date_create($tour->tour_start_date),"d-m-Y") }}</h5>
                                <h5>Số Lượng: {{ $slot[$i] }}/{{ $tour->max_people }}</h5>
                                <h5>Giá: {{ number_format($tour->price, 0, '.', ',') }}VNĐ</h5>
                            </div> 
                            <div class="col-lg-12 text-center" style="margin-top: 10px; margin-bottom: 10px;">
                                <a href="{{ route('nhanvien.tourregis', $tour->tour_id) }}"><button type="submit" class="site-btn">ĐẶT TOUR</button></a>
                            </div>
                        </div>   
                    </div>
                    @php
                        ++$i;
                    @endphp
                @endforeach
                
            @endif
        @endisset
        </div>
        {{ $allTours->links('nhanvien.pages.pagination') }}
        {{-- Pagination --}}
        {{-- <nav>
            <ul class="pagination d-flex justify-content-center flex-wrap pagination-flat pagination-success">
                <li class="page-item"><a class="page-link" href="#" data-abc="true"><i class="fa fa-angle-left"></i></a></li>
                <li class="page-item active"><a class="page-link" href="#" data-abc="true">1</a></li>
                <li class="page-item"><a class="page-link" href="#" data-abc="true">2</a></li>
                <li class="page-item"><a class="page-link" href="#" data-abc="true">3</a></li>
                <li class="page-item"><a class="page-link" href="#" data-abc="true">4</a></li>
                <li class="page-item"><a class="page-link" href="#" data-abc="true"><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </nav> --}}
    </div>
</section>
<!-- Featured Section End -->
@endsection