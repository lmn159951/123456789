<?php

use Illuminate\Support\Facades\Route;
//Admin
use App\Http\Controllers\Admin\QuanTriController;
use App\Http\Controllers\Admin\ChucVuController;
use App\Http\Controllers\Admin\DonViController;
use App\Http\Controllers\Admin\NhanVienController;
use App\Http\Controllers\Admin\PhongBanController;

//NhanVien
use App\Http\Controllers\NhanVien\NVNhanVienController;
use App\Http\Controllers\NhanVien\TimKiemController;
use App\Http\Controllers\NhanVien\DatTourController;
use App\Http\Controllers\NhanVien\LienHeController;
use App\Http\Controllers\NhanVien\TrangChuController;

Route::get('dangnhap')->name('dangnhap');
Route::get('/', [TrangChuController::class, 'index'])->name('trangchu');
Route::get('timkiem', [TimKiemController::class, 'index'])->name('timkiem');
Route::get('lienhe', [LienHeController::class, 'index'])->name('timkiem');
Route::prefix('nhanvien')->name('nhanvien.')->group(function(){
    Route::resource('thongtincanhan', NVNhanVienController::class);
    
    Route::resource('dattour', DatTourController::class);
});


Route::prefix('quantri')->name('quantri.')->group(function () {
    Route::get('/', [QuanTriController::class, 'dashboard'])->name('dashboard');
    Route::get('/login', [QuanTriController::class, 'login'])->name('login');
    Route::get('/register', [QuanTriController::class, 'register'])->name('register');

    Route::resource('donvi', DonViController::class);
    Route::resource('phongban', PhongBanController::class);
    Route::resource('chucvu', ChucVuController::class);
    Route::resource('nhanvien', NhanVienController::class);
});

Route::fallback(function () {
    return "404";
});
