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
        Schema::create('ho_tro', function (Blueprint $table) {
            $table->id('ma_ho_tro');
            $table->integer('nam_bat_dau');
            $table->integer('nam_ket_thuc');
            $table->integer('dieu_kien_toi_thieu')->nullable();
            $table->integer('dieu_kien_toi_da')->nullable();
            $table->integer('so_tien');
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
        Schema::dropIfExists('ho_tro');
    }
};
