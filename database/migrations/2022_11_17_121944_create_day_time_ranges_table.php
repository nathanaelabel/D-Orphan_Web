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
        Schema::create('day_time_ranges', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("day_id");
            $table->foreign('day_id')->references('id')->on('days')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->time('start_time');
            $table->time('end_time');
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
        Schema::dropIfExists('day_time_ranges');
    }
};
