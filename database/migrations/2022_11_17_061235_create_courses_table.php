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
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('tutor_id');
            $table->foreign("tutor_id")->references("id")->on("tutors");
            $table->unsignedBigInteger('skill_id');
            $table->foreign("skill_id")->references("id")->on("skills");
            $table->string("description")->nullable();
            $table->string("location");
            $table->integer("is_online")->default(0);
            $table->integer("is_visit")->default(0);
            $table->integer("maximum_member")->default(1);
            $table->integer("tool_price")->default(0);
            $table->string("tool_description");
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
        Schema::dropIfExists('courses');
    }
};
