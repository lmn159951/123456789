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
                @foreach ($allTours as $tour)
                    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="{{ $tour->image }}">
                                <ul class="featured__item__pic__hover">
                                    <li><a href="{{ route('nhanvien.tourregis', $tour->id) }}">Đặt tour</a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#">{{ $tour->name }}</a></h6>
                                <h5>{{ number_format($tour->price, 0, '', '.') }} VNĐ</h5>
                            </div>
                        </div>
                    </div>
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