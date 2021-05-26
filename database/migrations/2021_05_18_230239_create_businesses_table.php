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
            $table->string('business_path_image')->nullable();
            $table->string("business_identification_type");
            $table->string("business_identification_number");
            $table->string("business_name");
            $table->string("business_acronym")->nullable();
            $table->string("business_name_of_legal_representative")->nullable();
            $table->string("business_contact_name")->nullable();

            $table->string("business_email");
            $table->string("business_phone");
            $table->string("business_website")->nullable();
            $table->string("business_country");
            $table->string("business_city");
            $table->string("business_address");
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
