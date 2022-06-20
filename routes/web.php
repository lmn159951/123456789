<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\AgencyController;
use Illuminate\Support\Facades\Route;
//Admin
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
use App\Http\Controllers\NhanVien\SendMailController;

//NhanVien dang nhap
Route::get('dangnhap', [DangNhapController::class, 'index'])->name('dangnhapGet');
Route::post('dangnhap', [DangNhapController::class, 'login'])->name('dangnhapPost');

Route::get('/', [TrangChuController::class, 'index'])->name('home');
Route::get('timkiem', [TimKiemController::class, 'index'])->name('search');
Route::get('lienhe', [LienHeController::class, 'index'])->name('contact');
Route::post('guimail', [SendMailController::class, 'index'])->name('sendmail');
Route::get('dangxuat', [DangNhapController::class, 'logout'])->name('logout');

Route::prefix('nhanvien')->name('nhanvien.')->group(function(){
    Route::resource('thongtincanhan', NVNhanVienController::class);
    Route::resource('dattour', DatTourController::class);
});

Route::prefix('admin')->name('admin.')->group(function () {
    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
    Route::get('/login', [AdminController::class, 'login'])->name('login');
    Route::get('/register', [AdminController::class, 'register'])->name('register');

    Route::get('agencies/search', [AgencyController::class, 'search'])->name('agencies.search');
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


