@extends('nhanvien.layout.nhanvien')
@section('content')
<div class="contact-form spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact__form__title">
                    <h2>TÌM KIẾM</h2>
                </div>
            </div>
        </div>
        <form action="{{ route('search') }}" method="GET">
            <div class="row">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-2">
                    <div class="form-group">
                        Số ghế còn trống :
                    </div>
                    <div class="form-group">
                        <input name="emptyslotremain" type="number" class="form-control w-100 h-50" 
                        aria-label="Default" aria-describedby="inputGroup-sizing-default" value="@isset($request){{ $request->input('emptyslotremain') }}@endisset">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                        Tên tour :
                    </div>
                    <div class="form-group">
                        <input name="tourname" type="text" class="form-control w-100 h-50" 
                        aria-label="Default" aria-describedby="inputGroup-sizing-default" value="@isset($request){{ $request->input('tourname') }}@endisset">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group">
                        Vùng miền :
                    </div>
                    <div class="form-group">
                        @isset($recordsRegions)
                        <select class="custom-select w-100 p-0 pl-2" name="regionid">
                            <option value=null>Tất cả</option>
                            @foreach ($recordsRegions as $recordsRegion)
                                @isset($request)
                                @if($recordsRegion->id == $request->input('regionid'))
                                    <option selected value="{{ $recordsRegion->id }}">{{ $recordsRegion->name }}</option>
                                    @continue
                                @endif
                                @endisset
                                <option value="{{ $recordsRegion->id }}">{{ $recordsRegion->name }}</option>
                            @endforeach
                          </select>
                        @endisset
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        Giá :
                    </div>
                    <div class="row">
                        <div class="form-group col">
                            <input name="pricefrom" placeholder="Từ ..." type="number" class="form-control w-100 h-50" 
                            aria-label="Default" aria-describedby="inputGroup-sizing-default" value="@isset($request){{ $request->input('pricefrom') }}@endisset">
                        </div>
                        <div class="form-group col">
                            <input name="priceto" type="number" placeholder="Đến ..." class="form-control w-100 h-50" 
                            aria-label="Default" aria-describedby="inputGroup-sizing-default" value="@isset($request){{ $request->input('priceto') }}@endisset">
                        </div>
                    </div>
                </div>
                <div class="col-lg-1">
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <button type="submit" class="btn btn-success" style="background: #7fad39">Tìm kiếm</button>
            </div>  
        </form>
            <div class="row">
                <div class="col-lg-12" style="margin-top: 50px;">
                    <div class="contact__form__title">
                        <h2>Kết quả tìm kiếm</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter" style="margin-top: 10px">
                @isset($tours)
                @foreach ($tours as $tour)
                    <div class="col-lg-3 col-md-4  mix vegetables fastfood text-center">
                        <div class="featured__item" style="margin-top: 10px;">
                            <div class="img">
                                <a href="{{ route('home')."/".$tour->description_file }}">
                                    <img alt="{{ $tour->name }}" class="img-fluid" src="{{ $tour->image }}">
                                </a>
                            </div>
                            <div class="featured__item__text text-left">
                                <h6 style="font-size: 30px;"><a href="{{ route('home')."/".$tour->description_file }}">{{ Str::limit($tour->name, 25, '...') }}</a></h6>
                                <h5>Ngày Bắt Đầu: {{ date_format(date_create($tour->tour_start_date),"d-m-Y") }}</h5>
                                <h5>Số Lượng: {{ $tour->slot }}/{{ $tour->max_people }}</h5>
                                <h5>Giá: {{ number_format($tour->price, 0, '.', ',') }}VNĐ</h5>
                            </div> 
                            <div class="col-lg-12 text-center" style="margin-top: 10px; margin-bottom: 10px;">
                                <a href="{{ route('nhanvien.tourregis', $tour->id) }}"><button type="submit" class="site-btn">ĐẶT TOUR</button></a>
                            </div>
                        </div>   
                    </div>
                @endforeach
                @endisset
            </div>
            {{ $tours->appends(request()->except('page'))->links('nhanvien.pages.pagination') }}
    </div>
</div>   
@endsection