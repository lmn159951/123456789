<?php

use App\Http\Controllers\Admin\AgencyController;
use Illuminate\Support\Facades\Route;
//Admin
use App\Http\Controllers\Admin\QuanTriController;
use App\Http\Controllers\Admin\DepartmentController;
use App\Http\Controllers\Admin\PositionController;
use App\Http\Controllers\Admin\RegionController;
use App\Http\Controllers\Admin\TourController;
use App\Http\Controllers\Admin\UserController;

//NhanVien
use App\Http\Controllers\NhanVien\NVNhanVienController;
use App\Http\Controllers\NhanVien\TimKiemController;
use App\Http\Controllers\NhanVien\DatTourController;
use App\Http\Controllers\NhanVien\LienHeController;
use App\Http\Controllers\NhanVien\TrangChuController;
use App\Http\Controllers\NhanVien\DangNhapController;

//NhanVien dang nhap
Route::get('dangnhap', [DangNhapController::class, 'index'])->name('dangnhapGet');
Route::post('dangnhap', [DangNhapController::class, 'dangnhap'])->name('dangnhapPost');

Route::get('/', [TrangChuController::class, 'index'])->name('trangchu');
Route::get('timkiem', [TimKiemController::class, 'index'])->name('timkiem');
Route::get('lienhe', [LienHeController::class, 'index'])->name('timkiem');

Route::prefix('nhanvien')->name('nhanvien.')->group(function(){
    Route::resource('thongtincanhan', NVNhanVienController::class);
    Route::resource('dattour', DatTourController::class);
});


Route::prefix('admin')->name('admin.')->group(function () {
    Route::get('/', [QuanTriController::class, 'dashboard'])->name('dashboard');
    Route::get('/login', [QuanTriController::class, 'login'])->name('login');
    Route::get('/register', [QuanTriController::class, 'register'])->name('register');

    Route::resource('agencies', AgencyController::class);
    Route::resource('departments', DepartmentController::class);
    Route::resource('positions', PositionController::class);
    Route::resource('users', UserController::class);
    Route::resource('regions', RegionController::class);
    Route::resource('tours', TourController::class);
});

Route::fallback(function () {
    return "404";
});


