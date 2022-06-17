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
        Schema::create('tour_registrations', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('tour_id')->unsigned();
            $table->dateTime('registration_date');
            $table->string('relative_fullname')->nullable();
            $table->dateTime('birthday')->nullable();
            $table->string('gender')->nullable();
            $table->string('relationship')->nullable();
            $table->string('phone')->nullable();
            $table->string('citizen_card')->nullable();
            $table->bigInteger('cost')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('tour_id')->references('id')->on('tours')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tour_registrations');
    }
};
