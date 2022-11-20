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
        Schema::create('course_bookings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("course_id");
            $table->unsignedBigInteger("transaction_id")->nullable();
            $table->unsignedBigInteger("orphanage_id");
            $table->integer("hour_count");
            $table->foreign("course_id")->references("id")->on("courses");
            $table->foreign("transaction_id")->references("id")->on("transactions");

            $table->foreign("orphanage_id")->references("id")->on("orphanages");
            $table->datetime("start_date");
            $table->enum("status",['pending','ongoing','complete','canceled']);
            $table->integer("total_price");
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
        Schema::dropIfExists('course_bookings');
    }
};
