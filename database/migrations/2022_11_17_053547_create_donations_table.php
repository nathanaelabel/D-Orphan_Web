4<?php

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
        Schema::create('donations', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('orphanage_id');
            $table->foreign("orphanage_id")->references('id')->on("orphanages")
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->string("donator_name")->nullable();
            $table->integer("amount")->nullable();
            $table->string("message")->nullable();
            $table->unsignedBigInteger('transaction_id');
            $table->foreign('transaction_id')->references('id')->on("transactions")
            ->onUpdate('cascade')
            ->onDelete('cascade');
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
        Schema::dropIfExists('donations');
    }
};
