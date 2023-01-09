<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('course_bookings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('course_id');
            $table->unsignedBigInteger('transaction_id')->nullable();
            $table->unsignedBigInteger('orphanage_id');
            $table->integer('hour_count');
            $table->foreign('course_id')->references('id')->on('courses')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->foreign('transaction_id')->references('id')->on('transactions')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->integer('is_visit')->nullable();
            $table->foreign('orphanage_id')->references('id')->on('orphanages')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->enum('status', ['pending', 'ongoing', 'complete', 'canceled', 'confirmed']);
            //Pending --> Uang panti sudah dipotong, tapi masih bisa kembali kalau cancel
            //Canceled --> telah di cancel, uang kembali jika status masih pending. 
            //Ongoing --> Uang panti sudah dipotong, tidak bisa kembali
            //complete--> Tutor sudah selesai mengajar, uang belum diserahkan, panti bisa lapor jika tutor curang
            //confirmed --> Tutor sudah selesai mengajar, uang sudah diserahkan, panti tidak bisa protes. 
            
            $table->string('location')->nullable();
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
