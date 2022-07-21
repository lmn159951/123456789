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
            <div class="row featured__filter mb-3">
                @isset($allTours)
                    @if (count($allTours) == 0)
                        <div class="hero__item set-bg" data-setbg="">
                            <div class="hero__text">
                                <h2>KHÔNG CÓ KẾT QUẢ</h2>
                            </div>
                        </div>
                    @else
                        @php
                            $i = 0;
                        @endphp
                        @foreach ($allTours as $tour)
                            <div class="col-lg-3 col-md-4 mix vegetables fastfood">
                                <div class="card">
                                    <div class="img">
                                        <a href="{{ url($tour->description_file) }}">
                                            <img alt="{{ $tour->name }}" class="img-fluid" src="{{ $tour->image }}">
                                        </a>
                                    </div>
                                    <div class="card-body" style="height: 330px;">
                                        <h5 class="card-title card-text text-truncate">
                                            {{ $tour->name }}
                                        </h5>
                                        <p class="card-text card-content">
                                            <strong>Thời gian đăng ký:</strong><br />
                                            {{ date_format(date_create($tour->registration_start_date), 'd-m-Y') }} -
                                            {{ date_format(date_create($tour->registration_end_date), 'd-m-Y') }}<br />
                                            <strong>Thời gian đi:</strong><br />
                                            {{ date_format(date_create($tour->tour_start_date), 'd-m-Y') }} -
                                            {{ date_format(date_create($tour->tour_end_date), 'd-m-Y') }}<br />
                                            <strong>Giá:</strong> {{ number_format($tour->price, 0, '.', ',') }}VNĐ
                                        </p>
                                        <div class="card-button">
                                            @auth
                                                @if (App\Models\TourRegistration::isRegisted($tour->tour_id))
                                                    <a href="{{ route('nhanvien.tourhistory') }}"><button type="submit"
                                                            class="site-btn">ĐÃ ĐẶT TOUR</button></a>
                                                @else
                                                    <a href="{{ route('nhanvien.tourregis', $tour->tour_id) }}"><button
                                                            type="submit" class="site-btn">ĐẶT TOUR</button></a>
                                                @endif
                                            @endauth
                                            @guest
                                                <a href="{{ route('nhanvien.tourregis', $tour->tour_id) }}"><button
                                                        type="submit" class="site-btn">ĐẶT TOUR</button></a>
                                            @endguest
                                        </div>
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
