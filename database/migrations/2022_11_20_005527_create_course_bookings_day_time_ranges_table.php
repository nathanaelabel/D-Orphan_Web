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
        Schema::create('course_bookings_day_time_ranges', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("course_booking_id");
            $table->unsignedBigInteger("day_time_range_id");
            
            $table->foreign("course_booking_id")->references("id")->on("course_bookings");

            $table->foreign("day_time_range_id")->references("id")->on("day_time_ranges");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('course_bookings_day_time_ranges');
    }
};
