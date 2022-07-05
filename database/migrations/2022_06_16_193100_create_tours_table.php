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
        Schema::create('tours', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('max_people');
            $table->integer('price');
            $table->string('image')->nullable();
            $table->string('description_file')->nullable();
            $table->foreignId('region_id')->nullable()->constrained()->onDelete('set null');
            $table->dateTime('registration_start_date');
            $table->dateTime('registration_end_date');
            $table->dateTime('tour_start_date');
            $table->dateTime('tour_end_date');
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
        Schema::dropIfExists('tours');
    }
};
