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
        Schema::create('routepermissions', function (Blueprint $table) {
            $table->id();          
            $table->string("route");
            $table->string("slug");
            $table->string("name");
            $table->string("icon")->nullable();
           $table->integer('parent')->nullable()->default(0);

            $table->boolean('status')->nullable()->default(true);
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
        Schema::dropIfExists('routepermissions');
    }
};
