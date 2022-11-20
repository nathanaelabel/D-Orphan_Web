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
        Schema::create('orphan_course_bookings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("course_booking_id");
            $table->foreign("course_booking_id")->references("id")->on("course_bookings");
            $table->unsignedBigInteger("orphan_id");
            $table->foreign("orphan_id")->references("id")->on("orphans");
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
        Schema::dropIfExists('orphan_course_bookings');
    }
};
