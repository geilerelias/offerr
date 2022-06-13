<?php

namespace Database\Seeders;

use App\Models\Subcategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SubcategorySeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()

    {


        $subcategories = [
            [
                "id" => 1,
                'subcategory_name' => 'SUB CATEGORIA #1',
                'subcategory_description' => 'ESTA ES UNA SUBCATEGORIA',
                "subcategory_path_image" => NULL,
                "user_id" => 1,
                "business_id" => 1,
                "created_at" => '2021-06-24 09:16:05',
                "updated_at" => '2021-06-24 09:16:05'],
            [
                "id" => 2,
                'subcategory_name' => 'subcategoría #2',
                'subcategory_description' => 'Este es un ejemplo de subcategoría',
                "subcategory_path_image" => NULL,
                "user_id" => 1,
                "business_id" => 2,
                "created_at" => '2021-06-24 17:52:10',
                "updated_at" => '2021-06-24 17:52:10'],
            [
                "id" => 3,
                'subcategory_name' => 'jamon y queso',
                'subcategory_description' => 'asdfeg',
                "subcategory_path_image" => NULL,
                "user_id" => 2,
                "business_id" => 3,
                "created_at" => '2021-06-25 10:39:42',
                "updated_at" => '2021-06-25 10:39:42'],
            [
                "id" => 4,
                'subcategory_name' => 'Pizza',
                'subcategory_description' => 'Ghkollll',
                "subcategory_path_image" => NULL,
                "user_id" => 3,
                "business_id" => 4,
                "created_at" => '2021-06-26 00:37:26',
                "updated_at" => '2021-06-26 00:37:26'],
            [
                "id" => 5,
                'subcategory_name' => 'perros calientes',
                'subcategory_description' => 'vmzxklvmzlzm',
                "subcategory_path_image" => 'subcategory/subcategory-image-1625015770.jpg',
                "user_id" => 2,
                "business_id" => 3,
                "created_at" => '2021-06-30 01:16:10',
                "updated_at" => '2021-06-30 01:16:10'],
            [
                "id" => 6,
                'subcategory_name' => 'Zapatos',
                'subcategory_description' => 'Jzkzllxlx',
                "subcategory_path_image" => NULL,
                "user_id" => 3,
                "business_id" => 4,
                "created_at" => '2021-07-03 02:55:03',
                "updated_at" => '2021-07-03 02:55:03'],
            [
                "id" => 7,
                'subcategory_name' => 'Linea Blanca',
                'subcategory_description' => 'todo lo relacionado a los servicios en el hogar',
                "subcategory_path_image" => 'subcategory/subcategory-image-1630760482.jfif',
                "user_id" => 2,
                "business_id" => 6,
                "created_at" => '2021-09-04 13:01:22',
                "updated_at" => '2021-09-04 13:01:22']
        ];

        foreach ($subcategories as $value) {
            Subcategory::create([
                'id' => $value['id'],
                'subcategory_name' => $value['subcategory_name'],
                'subcategory_description' => $value['subcategory_description'],
                'subcategory_path_image' => $value['subcategory_path_image'],
                'user_id' => $value['user_id'],
                'business_id' => $value['business_id'],
                'created_at' => $value['created_at'] ,
                'updated_at' => $value['updated_at'],
            ]);
        }
    }
}
