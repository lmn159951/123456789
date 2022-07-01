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
            <th>Thao tác</th>
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
                <td class="d-flex justify-content-start">
                    @php
                        $registration_start_date = strtotime($result->registration_start_date);
                        $registration_end_date = strtotime($result->registration_end_date);
                    @endphp
                    @if($today >= $registration_start_date && $today <= $registration_end_date)
                    <a href="{{ route('nhanvien.tourregis', $result->tour_id) }}"><button class="btn btn-warning mr-2">Sửa</button></a>
                    <button data-tour-id="{{ $result->tour_id }}" data-tour-name="{{ $result->name }}" class="btn btn-danger delete-tour">Hủy</button>
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
<!-- Modal box delete tour yes no -->
<div class="modal fade" id="modal_delete_tour" tabindex="-1" role="dialog" aria-labelledby="modal_yes_no" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Hủy tour</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            Bạn 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
          <form action="{{ route('nhanvien.deletetour') }}" method="POST">
            @csrf
            <input type="hidden" name="tourid">
            <button type="submit" class="btn btn-primary">Đồng ý</button>
          </form>
        </div>
      </div>
    </div>
</div>
@endsection