<?php

use App\Http\Controllers\Admin\ChucVuController;
use App\Http\Controllers\Admin\DonViController;
use App\Http\Controllers\Admin\PhongBanController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\SiteController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


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
    Route::get('/', [SiteController::class, 'dashboard'])->name('dashboard');

    Route::prefix('donvi')->name('donvi.')->group(function () {
        Route::get('/', [DonViController::class, 'list'])->name('list');
        Route::get('/them', [DonViController::class, 'store'])->name('store');
        Route::post('/them', [DonViController::class, 'create'])->name('create');
        Route::get('/capnhat/{ma_don_vi}', [DonViController::class, 'edit'])->name('edit');
        Route::post('/capnhat/{ma_don_vi}', [DonViController::class, 'update'])->name('update');
        Route::get('/xoa/{ma_don_vi}', [DonViController::class, 'delete'])->name('delete');
    });

    Route::prefix('phongban')->name('phongban.')->group(function () {
        Route::get('/', [PhongBanController::class, 'list'])->name('list');
        Route::get('/them', [PhongBanController::class, 'store'])->name('store');
        Route::post('/them', [PhongBanController::class, 'create'])->name('create');
        Route::get('/capnhat/{ma_phong_ban}', [PhongBanController::class, 'edit'])->name('edit');
        Route::post('/capnhat/{ma_phong_ban}', [PhongBanController::class, 'update'])->name('update');
        Route::get('/xoa/{ma_phong_ban}', [PhongBanController::class, 'delete'])->name('delete');
    });

    Route::prefix('chucvu')->name('chucvu.')->group(function () {
        Route::get('/', [ChucVuController::class, 'list'])->name('list');
        Route::get('/them', [ChucVuController::class, 'store'])->name('store');
        Route::post('/them', [ChucVuController::class, 'create'])->name('create');
        Route::get('/capnhat/{ma_chuc_vu}', [ChucVuController::class, 'edit'])->name('edit');
        Route::post('/capnhat/{ma_chuc_vu}', [ChucVuController::class, 'update'])->name('update');
        Route::get('/xoa/{ma_chuc_vu}', [ChucVuController::class, 'delete'])->name('delete');
    });
});
