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
        Schema::create('tutor_day_time_ranges', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("tutor_id");
            $table->unsignedBigInteger("day_time_range_id");
            $table->foreign("tutor_id")->references("id")->on("tutors");
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
        Schema::dropIfExists('tutor_day_time_ranges');
    }
};
