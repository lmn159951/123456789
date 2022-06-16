<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\QuanTriController;
use App\Http\Controllers\Admin\ChucVuController;
use App\Http\Controllers\Admin\DonViController;
use App\Http\Controllers\Admin\NhanVienController;
use App\Http\Controllers\Admin\PhongBanController;

Route::get('dangnhap')->name('danganhap');
Route::prefix('nguoidung')->name('nguoidung.')->group(function(){
    Route::get('/')->name('trangchu');
    Route::get('thongtincanhan')->name('xemthongtincanhan');
    Route::post('thongtincanhan')->name('luuthongtincanhan');
    Route::get('timkiem')->name('timkiem');
    Route::get('dattour')->name('dattourGet');
    Route::post('dattour')->name('dattourPost');
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
