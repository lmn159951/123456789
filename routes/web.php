<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\QuanTriController;
use App\Http\Controllers\Admin\ChucVuController;
use App\Http\Controllers\Admin\DonViController;
use App\Http\Controllers\Admin\NhanVienController;
use App\Http\Controllers\Admin\PhongBanController;

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
