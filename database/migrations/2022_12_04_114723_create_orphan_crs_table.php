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
        Schema::create('orphan_crs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('competition_recommendation_id');
            $table->foreign('competition_recommendation_id')->references('id')->on('competition_recommendations')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->unsignedBigInteger('orphan_id');
            $table->foreign('orphan_id')->references('id')->on('orphans')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->text('description');
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
        Schema::dropIfExists('orphan_competition_recommendations');
    }
};
