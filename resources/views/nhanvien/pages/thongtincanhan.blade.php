@extends('nhanvien.layout.nhanvien')
@section('content')
 <!-- Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Thông Tin Nhân Viên</h2>
                    </div>
                </div>
            </div>
            @auth('user')
            @isset($ttcn)
            <form action="{{ route('nhanvien.thongtincanhan.edit', Auth::guard('user')->user()->id) }}" method="HEAD">
                @method('HEAD')
                @csrf
                <div class="d-flex justify-content-center">
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="col-5"><p>Họ và tên nhân viên:</p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input readonly type="text" placeholder="" required name="fullname" value="{{ $ttcn->fullname }}">
                        </div>
                        <div class="col-3"></div>
                        <div class="col-5"><p>Email: <span class="dau_">(*)</span></p></div>
                        <div class="col-4"></div>
                        <div class="password d-flex justify-content-center">
                            <input type="text" placeholder="" required name="email" value="{{ $ttcn ->email}}">
                        </div>
                        @error('email') 
                        <div class="password d-flex justify-content-center">
                            {{ $message }}
                        </div>
                        @enderror
                        <div class="col-3"></div>
                        <div class="col-5"><p>Giới tính:</p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input readonly type="text" placeholder="" name="gender" value="{{ $ttcn ->gender}}">
                        </div>
                        <div class="col-3"></div>
                        <div class="col-5"><p>Số điện thoại: <span class="dau_">(*)</span></p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input type="text" placeholder="" required name="phone" value="{{ $ttcn ->phone}}">
                        </div>
                        @error('phone') 
                        <div class="password d-flex justify-content-center">
                            {{ $message }}
                        </div>
                        @enderror
                        <div class="col-3"></div>
                        <div class="col-5"><p>CMND/CCCD: <span class="dau_">(*)</span></p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input type="text" placeholder="" required name="citizen_card" value="{{ $ttcn->citizen_card}}">
                        </div>
                        @error('citizen_card') 
                        <div class="password d-flex justify-content-center">
                            {{ $message }}
                        </div>
                        @enderror
                        <div class="col-3"></div>
                        <div class="col-5"><p>Tên phòng ban:</p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input readonly type="text" placeholder="" required name="department_id" value="{{ $ttcn->department_name }}">
                        </div>
                        <div class="col-3"></div>
                        <div class="col-5"><p>Tên chức vụ:</p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input readonly type="text" placeholder="" name="position_id" value="{{ $ttcn->position_name }}">
                        </div>
                        <div class="col-3"></div>
                        <div class="col-5"><p>Tên đơn vị:</p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input readonly type="text" placeholder="" name="agency_id" value="{{ $ttcn->agency_name }}">
                        </div>
                        <div class="col-3"></div>
                        <div class="col-5"><p>Ngày vào làm:</p></div>
                        <div class="col-4"></div>
                        <div class="tentaikhoan d-flex justify-content-center">
                            <input readonly type="text" placeholder="" name="start_date" value="{{ $ttcn->start_date }}">
                        </div>
                        <div class="col-lg-12 text-center">
                            <button type="submit" class="site-btn">LƯU</button>
                        </div>
                        @if(Session::has('message'))
                        <div class="col-4"></div>
                        <div class="col-4 d-flex justify-content-center mt-3">
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        </div>
                        <div class="col-4"></div>
                        @endisset
                    </div>
                </div>    
            </form>
            @endisset
            @endauth
        </div>
    </div>
@endsection