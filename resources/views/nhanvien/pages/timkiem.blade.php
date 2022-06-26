@extends('nhanvien.layout.nhanvien')
@section('content')
<div class="contact-form spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact__form__title">
                    <h2>TÌM KIẾM NÂNG CAO</h2>
                </div>
            </div>
        </div>
        <form action="#">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat"></div>
                        <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat" style="margin-top: 10px">
                            <tr>
                                <td>Số lượng ghế:</td>
                                <td><input style="width: 100%" type="number" placeholder=""></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="background-color:#7fad39;">
                                        Địa điểm du lịch
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><a href="#">Đông Bắc Bộ</a></li>
                                            <li><a href="#">Tây Bắc Bộ</a></li>
                                            <li><a href="#">Đồng bằng sông Hồng</a></li>
                                            <li><a href="#">Bắc Trung Bộ</a></li>
                                            <li><a href="#">Nam Trung Bộ</a></li>
                                            <li><a href="#">Tây Nguyên</a></li>
                                            <li><a href="#">Đông Nam Bộ</a></li>
                                            <li><a href="#">Tây Nam Bộ</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>    
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat" style="margin-top: 10px">
                            <tr>
                                <td >Tên Tour:</td>
                                <td><input style="width: 100%" type="text" placeholder=""></td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="background-color:#7fad39; ">
                                        Sắp xếp giá
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><p class="sapxepgia dropdown-item" href="#">Tăng Dần</p></li>
                                            <li><p class="sapxepgia dropdown-item" href="#">Giảm Dần</p></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>    
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat"></div>
                        
                        <div class="col-lg-12 text-center mt-5">
                            <button type="submit" class="site-btn">Tìm kiếm</button>
                        </div>
                        
                    </div>    
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
                        <div class="col-lg-3 col-md-4  mix vegetables fastfood text-center">
                            <div class="featured__item" style="margin-top: 10px;">
                                <div class="img">
                                    <a href="#"><img src="img/featured/feature-7.jpg" class="img-fluid"></a>
                                </div>
                                <div class="featured__item__text text-left">
                                    <h6 style="font-size: 30px;"><a href="#">Crab Pool Security</a></h6>
                                    <h5>Ngày Bắt Đầu: 23/06/2022</h5>
                                    <h5>Số Lượng: 20/100</h5>
                                    <h5>Giá: 2.500.000VNĐ</h5>
                                </div> 
                                <div class="col-lg-12 text-center" style="margin-top: 10px; margin-bottom: 10px;">
                                    <button type="submit" class="site-btn">ĐẶT TOUR</button>
                                </div>   
                            </div>   
                        </div>   
                </div>
        
</div>
</div>   
@endsection