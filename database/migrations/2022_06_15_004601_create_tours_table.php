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
        Schema::create('tour', function (Blueprint $table) {
            $table->bigIncrements('ma_tour');
            $table->string('ten_tour');
            $table->string('hinh_anh');
            $table->string('file_mo_ta');
            $table->dateTime('ngay_bat_dau_di_tour');
            $table->dateTime('ngay_ket_thuc_di_tour');
            $table->dateTime('ngay_bat_Dau_dang_ky');
            $table->dateTime('ngay_ket_thuc_dang_ky');
            $table->integer('don_gia');
            $table->integer('so_nguoi_toi_da');
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
        Schema::dropIfExists('tour');
    }
};
