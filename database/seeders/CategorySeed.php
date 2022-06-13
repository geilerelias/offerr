<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $catagory = [
            ["id" => 1, "category_name" => "Moda", "category_description" => "esta categoría de moda", "category_subcategories" => null, "category_path_image" => "category/category-image-1624507862.jpg", "user_id" => 1, "created_at" => "2021-06-24T04:11:02.000000Z", "updated_at" => "2021-06-24T04:11:02.000000Z"],
            ["id" => 2, "category_name" => "Electrodoméstico", "category_description" => "Esta es una categoría de electrodomésticos caseros", "category_subcategories" => null, "category_path_image" => "category/category-image-1624508001.jpg", "user_id" => 1, "created_at" => "2021-06-24T04:13:21.000000Z", "updated_at" => "2021-06-24T04:13:21.000000Z"],
            ["id" => 3, "category_name" => "Muebles y Colchones", "category_description" => "esta es la categoría mas cómoda", "category_subcategories" => null, "category_path_image" => "category/category-image-1624994233.jpg", "user_id" => 1, "created_at" => "2021-06-29T14:17:13.000000Z", "updated_at" => "2021-06-29T14:17:13.000000Z"],
            ["id" => 4, "category_name" => "Restaurantes", "category_description" => "Esta es una categoría dedicada a los restaurantes", "category_subcategories" => null, "category_path_image" => "category/category-image-1624994293.jpg", "user_id" => 1, "created_at" => "2021-06-29T14:18:13.000000Z", "updated_at" => "2021-06-29T14:18:13.000000Z"],
            ["id" => 5, "category_name" => "Tecnología", "category_description" => "Esta es una categoría dedicada a la tecnología", "category_subcategories" => null, "category_path_image" => "category/category-image-1624994359.jpg", "user_id" => 1, "created_at" => "2021-06-29T14:19:19.000000Z", "updated_at" => "2021-06-29T14:19:19.000000Z"],
        ];

        foreach ($catagory as $value) {
            Category::create([
                'id' => $value['id'],
                'category_name' => $value['category_name'],
                'category_description' => $value['category_description'],
                'category_subcategories' => $value['category_subcategories'],
                'category_path_image' => $value['category_path_image'],
                'user_id' => $value['user_id']
            ]);
        }
    }
}
