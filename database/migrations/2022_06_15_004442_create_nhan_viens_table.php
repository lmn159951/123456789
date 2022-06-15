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
        Schema::create('nhan_viens', function (Blueprint $table) {
            $table->bigIncrements('ma_nhan_vien');
            $table->string('ten_nhan_vien')->nullable(false);
            $table->string('ten_tai_khoan')->nullable(false);
            $table->string('mat_khau')->nullable(false);
            $table->string('email')->nullable();
            $table->string('gioi_tinh')->nullable(false);
            $table->string('so_dien_thoai')->nullable();
            $table->string('cmnd')->nullable();
            $table->string('ma_phong_ban')->nullable(false);
            $table->string('ma_chuc_vu')->nullable(false);
            $table->string('ma_don_vi')->nullable(false);
            $table->dateTime('ngay_vao_lam')->nullable(false);
            $table->boolean('la_quan_tri')->nullable(false);
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
        Schema::table('nhan_viens', function (Blueprint $table) {
            $table->dropSoftDeletes();
        });
        Schema::dropIfExists('nhan_viens');
        
    }
};
