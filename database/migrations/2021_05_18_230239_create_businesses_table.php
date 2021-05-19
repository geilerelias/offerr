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
            $table->string("identification_Type");
            $table->string("identification_number");
            $table->string("name");
            $table->string("company_acronym");
            $table->string("company_address");
            $table->string("Name_of_legal_representative");
            $table->string("company_contact_name");
            $table->string("email");
            $table->string("email_confirmation");
            $table->string("phone");
            $table->string("website");
            $table->string("country");
            $table->string("department");
            $table->string("municipality");
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
