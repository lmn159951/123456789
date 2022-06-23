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
use App\Http\Controllers\Admin\SupportController;
use App\Http\Controllers\Admin\TourRegistrationController;
//NhanVien
use App\Http\Controllers\NhanVien\NVNhanVienController;
use App\Http\Controllers\NhanVien\TimKiemController;
use App\Http\Controllers\NhanVien\DatTourController;
use App\Http\Controllers\NhanVien\LienHeController;
use App\Http\Controllers\NhanVien\TrangChuController;
use App\Http\Controllers\NhanVien\DangNhapController;
use App\Http\Controllers\NhanVien\SendMailController;
use App\Http\Controllers\NhanVien\QuenMatKhauController;


//Public
Route::get('/', [TrangChuController::class, 'index'])->name('home');
Route::get('tat-ca-cac-tour', [TrangChuController::class, 'allTour'])->name('alltour');
Route::get('tim-kiem', [TimKiemController::class, 'index'])->name('search');
Route::get('lien-he', [LienHeController::class, 'index'])->name('contact');
Route::post('gui-mail', [SendMailController::class, 'index'])->name('sendmail');

//Un loged in user
Route::middleware('not_loged_in')->group(function(){
    Route::get('dang-nhap', [DangNhapController::class, 'index'])->name('login');
    Route::post('dang-nhap', [DangNhapController::class, 'login'])->name('loginPost');
    Route::get('quen-mat-khau', [QuenMatKhauController::class, 'index'])->name('forgotpassword');
    Route::post('quen-mat-khau', [QuenMatKhauController::class, 'forgotpassword'])->name('forgotpasswordPost');
    Route::get('khoi-phuc-tai-khoan/{token}', [QuenMatKhauController::class, 'recoveryaccount'])->name('recoveryaccount');
    Route::post('khoi-phuc-tai-khoan', [QuenMatKhauController::class, 'recoveryaccountPost'])->name('recoveryaccountPost');
});

//User
Route::middleware('user')->prefix('nhan-vien')->name('nhanvien.')->group(function(){
    Route::resource('thay-doi-mat-khau', ChangePassword::class);
    Route::resource('thong-tin-ca-nhan', NVNhanVienController::class);
    Route::resource('dat-tour', DatTourController::class);
    // Route::get('dang-xuat', [DangNhapController::class, 'logout'])->name('logout');
});

//Admin
Route::prefix('admin')->name('admin.')->group(function () {
    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
    Route::get('/login', [AdminController::class, 'login'])->name('login');
    Route::get('/register', [AdminController::class, 'register'])->name('register');

    Route::post('/agencies/search', [AgencyController::class, 'search'])->name('agencies.search');
    Route::delete('/agencies/deleteMany', [AgencyController::class, 'deleteMany'])->name('agencies.deleteMany');
    Route::resource('agencies', AgencyController::class);

    Route::resource('departments', DepartmentController::class);
    Route::resource('positions', PositionController::class);

    // Route::post('/users/search', [UserController::class, 'search'])->name('users.search');
    Route::delete('/users/deleteMany', [UserController::class, 'deleteMany'])->name('users.deleteMany');
    Route::get('/users/datatableApi', [UserController::class, 'datatableApi'])->name('users.datatableApi');
    Route::resource('users', UserController::class);

    Route::resource('regions', RegionController::class);
    Route::get('/tours/showFileDescription/{tour}', [TourController::class,'showFileDescription'])->name('tours.showFileDescription');
    Route::resource('tours', TourController::class);
    Route::resource('supports', SupportController::class);
    // Route::get('dang-xuat', [DangNhapController::class, 'logout'])->name('logout');
    Route::resource('tour_registrations',TourRegistrationController::class);
});

Route::fallback(function () {
    return "404";
});
