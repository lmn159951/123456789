<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dang_ky_tour', function (Blueprint $table) {
            $table->bigIncrements('ma_dang_ky_tour');
            $table->bigInteger('ma_nhan_vien_dang_ky_tour');
            $table->bigInteger('ma_tour');
            $table->dateTime('ngay_dang_ky');
            $table->string('ho_ten');
            $table->dateTime('ngay_sinh');
            $table->string('gioi_tinh');
            $table->string('quan_he')->nullable();
            $table->string('so_dien_thoai')->nullable();
            $table->string('CMND');
            $table->integer('so_tien_thu');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dang_ky_tour');
    }
};
