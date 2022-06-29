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
            $table->dateTime('registration_date');
            $table->string('relative_fullname')->nullable();
            $table->dateTime('birthday')->nullable();
            $table->string('gender')->nullable();
            $table->string('relationship')->nullable();
            $table->string('phone')->nullable();
            $table->string('citizen_card')->nullable();
            $table->bigInteger('cost')->nullable();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('tour_id')->constrained()->onDelete('cascade');
            $table->foreignId('support_id')->nullable()->constrained()->onDelete('cascade');
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
        Schema::dropIfExists('tour_registrations');
    }
};
