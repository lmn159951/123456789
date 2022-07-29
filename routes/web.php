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
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\ImageController;
//NhanVien
use App\Http\Controllers\NhanVien\NVNhanVienController;
use App\Http\Controllers\NhanVien\TimKiemController;
use App\Http\Controllers\NhanVien\DangKyTourController;
use App\Http\Controllers\NhanVien\LienHeController;
use App\Http\Controllers\NhanVien\TrangChuController;
use App\Http\Controllers\NhanVien\DangNhapController;
use App\Http\Controllers\NhanVien\SendMailController;
use App\Http\Controllers\NhanVien\ChangePassword;
use App\Http\Controllers\NhanVien\QuenMatKhauController;

//Un loged in user
Route::middleware('guest')->group(function(){
    Route::get('dang-nhap', [DangNhapController::class, 'index'])->name('login');
    Route::post('dang-nhap', [DangNhapController::class, 'login'])->name('loginPost');
    Route::get('quen-mat-khau', [QuenMatKhauController::class, 'index'])->name('forgotpassword');
    Route::post('quen-mat-khau', [QuenMatKhauController::class, 'forgotpassword'])->name('forgotpasswordPost');
    Route::get('khoi-phuc-tai-khoan/{token}', [QuenMatKhauController::class, 'recoveryaccount'])->name('recoveryaccount');
    Route::post('khoi-phuc-tai-khoan', [QuenMatKhauController::class, 'recoveryaccountPost'])->name('recoveryaccountPost');
});

Route::middleware('user')->group(function(){
    Route::get('/', [TrangChuController::class, 'index'])->name('home');
    Route::get('tat-ca-cac-tour', [TrangChuController::class, 'allTour'])->name('alltour');
    Route::get('tim-kiem', [TimKiemController::class, 'index'])->name('search');
    Route::get('lien-he', [LienHeController::class, 'index'])->name('contact');
    Route::post('gui-mail', [SendMailController::class, 'index'])->name('sendmail');
});

//User
Route::middleware('user')->prefix('nhan-vien')->name('nhanvien.')->group(function(){
    Route::get('/', function(){ return redirect()->route('nhanvien.thong-tin-ca-nhan.index'); });
    Route::resource('thay-doi-mat-khau', ChangePassword::class);
    Route::resource('thong-tin-ca-nhan', NVNhanVienController::class);
    Route::get('dang-ky-tour/{tour_id}', [DangKyTourController::class, 'index'])->name('tourregis')->where('tour_id', '[0-9]+');
    Route::post('dang-ky-tour/{tour_id}', [DangKyTourController::class, 'tourregistration'])->name('tourregisPost')->where('tour_id', '[0-9]+');
    Route::post('huy-tour', [DangKyTourController::class, 'deletetour'])->name('deletetour');
    Route::get('lich-su-dat-tour', [DangKyTourController::class, 'tourhistory'])->name('tourhistory');
    Route::get('dang-xuat', [DangNhapController::class, 'logout'])->name('logout');
});

//Admin
Route::middleware(['is_admin'])->prefix('admin')->name('admin.')->group(function() {
    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
    Route::get('/auth/logout', [AuthController::class, 'logout'])->name('auth.logout');

    Route::get('/agencies', [AgencyController::class, 'index'])->name('agencies.index');
    Route::get('/agencies/datatableApi', [AgencyController::class, 'datatableApi'])->name('agencies.datatableApi');
    Route::get('/agencies/create', [AgencyController::class, 'create'])->name('agencies.create');
    Route::post('/agencies/create', [AgencyController::class, 'store'])->name('agencies.store');
    Route::get('/agencies/{department}/edit', [AgencyController::class, 'edit'])->name('agencies.edit');
    Route::patch('/agencies/{department}', [AgencyController::class, 'update'])->name('agencies.update');
    Route::delete('/agencies/{department}', [AgencyController::class, 'destroy'])->name('agencies.destroy');

    Route::group([ 'prefix'=>'/agencies/{agencySlug}', 'as'=>'agencies.' ], function() {
        Route::get('/departments', [DepartmentController::class, 'index'])->name('departments.index');
        Route::get('/departments/datatableApi', [DepartmentController::class, 'datatableApi'])->name('departments.datatableApi');
        Route::get('/departments/create', [DepartmentController::class, 'create'])->name('departments.create');
        Route::post('/departments/create', [DepartmentController::class, 'store'])->name('departments.store');
        Route::get('/departments/{department}/edit', [DepartmentController::class, 'edit'])->name('departments.edit');
        Route::patch('/departments/{department}', [DepartmentController::class, 'update'])->name('departments.update');
        Route::delete('/departments/{department}', [DepartmentController::class, 'destroy'])->name('departments.destroy');

        Route::group([ 'prefix'=>'/departments/{departmentSlug}', 'as'=>'departments.' ], function () {
            Route::get('/positions', [PositionController::class, 'index'])->name('positions.index');
            Route::get('/positions/datatableApi', [PositionController::class, 'datatableApi'])->name('positions.datatableApi');
            Route::get('/positions/create', [PositionController::class, 'create'])->name('positions.create');
            Route::post('/positions/create', [PositionController::class, 'store'])->name('positions.store');

            Route::get('/positions/{position}/edit', [PositionController::class, 'edit'])->name('positions.edit');
            Route::patch('/positions/{position}', [PositionController::class, 'update'])->name('positions.update');
            Route::delete('/positions/{position}', [PositionController::class, 'destroy'])->name('positions.destroy');
        });
    });

    Route::post('/departments/findByAgencyId', [DepartmentController::class, 'findByAgencyId'])->name('departments.findByAgencyId');
    Route::post('/positions/findByDepartmentId', [PositionController::class, 'findByDepartmentId'])->name('positions.findByDepartmentId');
    Route::post('/users/search', [UserController::class, 'search'])->name('users.search');
    Route::get('/users/resetPassword/{user}', [UserController::class, 'resetPassword'])->name('users.resetPassword')->where('user', '[0-9]+');
    Route::delete('/users/deleteMany', [UserController::class, 'deleteMany'])->name('users.deleteMany');
    Route::resource('users', UserController::class);

    Route::resource('regions', RegionController::class);

    Route::post('/tours/search', [TourController::class, 'search'])->name('tours.search');
    Route::delete('/tours/deleteMany', [TourController::class, 'deleteMany'])->name('tours.deleteMany');
    Route::get('/tours/datatableApi', [TourController::class, 'datatableApi'])->name('tours.datatableApi');
    Route::get('/tours/showFileDescription/{tour}', [TourController::class,'showFileDescription'])->name('tours.showFileDescription')->where('tour', '[0-9]+');
    Route::get('/tours/download/{tour}',[TourController::class,'download'])->name('tours.download')->where('tour', '[0-9]+');
    Route::resource('tours', TourController::class);

    Route::post('/supports/search', [SupportController::class, 'search'])->name('supports.search');
    Route::delete('/supports/deleteMany', [SupportController::class, 'deleteMany'])->name('supports.deleteMany');
    Route::get('/supports/datatableApi', [SupportController::class, 'datatableApi'])->name('supports.datatableApi');
    Route::resource('supports', SupportController::class);

    Route::delete('/tour_registrations/deleteMany', [TourRegistrationController::class, 'deleteMany'])->name('tour_registrations.deleteMany');
    Route::get('/tour_registrations/datatableApi', [TourRegistrationController::class, 'datatableApi'])->name('tour_registrations.datatableApi');
    Route::resource('tour_registrations',TourRegistrationController::class);
});

Route::fallback(function () {
    return view('404');
});
