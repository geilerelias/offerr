<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBusinessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('businesses', function (Blueprint $table) {
            $table->id();
            $table->string('business_path_cover_image')->nullable();
            $table->string('business_path_profile_image')->nullable();
            $table->string("business_name");
            $table->string("business_acronym")->nullable();

            $table->string("business_email");
            $table->string("business_phone");
            $table->string("business_website")->nullable();
            $table->string("business_address");
            $table->string("business_city");
            $table->string("business_department");
            $table->tinyText("business_subcategory")->nullable();

            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');

            $table->unsignedBigInteger('category_id');
            $table->foreign('category_id')->references('id')->on('categories');

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
        Schema::dropIfExists('businesses');
    }
}
