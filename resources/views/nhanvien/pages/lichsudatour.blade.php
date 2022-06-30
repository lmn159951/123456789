@extends('nhanvien.layout.nhanvien')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="contact__form__title">
                <h2>Lịch Sử Đặt Tour</h2>
            </div>
        </div>
    </div>
    <div class="row" style="overflow-y: hidden; overflow-x: scroll;">
    <table class="table table-hover w-100" >
        <thead class="thead-dark">
        <tr>
            <th>STT</th>
            <th>Tên tour</th>
            <th>Thành viên tham gia</th>
            <th>Ngày bắt đầu đi</th>
            <th>Tổng tiền</th>
            <th></th>
        </tr>
        </thead>
        @isset($results)
            @php
                $count = 1;
                $today = strtotime("now");
            @endphp
            @foreach ($results as $result)
            <tr>
                <td scope="row">{{ $count }}</td>
                <td>{{ $result->name }}</td>
                <td class="text-center">{{ $result->member_count }}</td>
                <td class="text-center">{{ date_format(date_create($result->tour_start_date),'d-m-Y') }}</td>
                <td>{{ number_format($result->total_cost, 0, '.', ',') }} VNĐ</td>
                <td class="d-flex justify-content-end">
                    @php
                        $registration_start_date = strtotime($result->registration_start_date);
                        $registration_end_date = strtotime($result->registration_end_date);
                    @endphp
                    @if($today >= $registration_start_date && $today <= $registration_end_date)
                    <a href="{{ route('nhanvien.tourregis', $result->tour_id) }}"><button class="btn btn-warning">Sửa</button></a>
                    
                    <form class="ml-2" action="{{ route('nhanvien.deletetour') }}" method="POST">
                        @csrf
                        <input name="tourid" type="hidden" value="{{ $result->tour_id }}">
                        <button class="btn btn-danger">Hủy</button>
                    </form>
                    
                    @else
                    <a class="btn btn-success" href="{{ route('nhanvien.tourregis', $result->tour_id) }}" role="button">Xem</a>
                    @endif
                </td>
            </tr>
            @php
                ++$count;
            @endphp
            @endforeach
        @endisset
    </table>
    </div>
</div>

@endsection