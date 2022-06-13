<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        //id	product_name	product_description	product_price	product_stock	product_path_image	product_due_date	business_id	subcategory_id	user_id	created_at	updated_at
        $products = [
            [
                "id" => 1,
                'product_name' => 'example',
                'product_description' => "este es un ejemplo de producto",
                'product_price' => 154645,
                'product_stock' => 16,
                'product_path_image' => 'NULL',
                'product_due_date' => NULL,
                'business_id' => 1,
                'subcategory_id' => 1,
                'user_id' => 1,
                'created_at' => '2021-06-24 12:45:13',
                'updated_at' => '2021-06-24 12:45:13'
            ],
            [
                "id" => 2,
                'product_name' => 'producto #2',
                'product_description' => "este es un ejemplo de producto",
                'product_price' => 10000,
                'product_stock' => 25,
                'product_path_image' => 'NULL',
                'product_due_date' => NULL,
                'business_id' => 2,
                'subcategory_id' => 2,
                'user_id' => 1,
                'created_at' => '2021-06-24 12:52:54',
                'updated_at' => '2021-06-24 12:52:54'
            ],
            [
                "id" => 3,
                'product_name' => 'pizza jamon',
                'product_description' => " pizza jamon queso mix	fgshfhthcd",
                'product_price' => 15000,
                'product_stock' => 14,
                'product_path_image' => NULL,
                'product_due_date' => NULL,
                'business_id' => 3,
                'subcategory_id' => 3,
                'user_id' => 2,
                'created_at' => '2021-06-25 05:41:33',
                'updated_at' => '2021-06-25 05:41:33'
            ],
            [
                "id" => 4,
                'product_name' => 'Pizza',
                'product_description' => "Ujkoll",
                'product_price' => 30000,
                'product_stock' => 51,
                'product_path_image' => '["product\/product-image-01624667913.jpg","product\/product-image-11624667913.jpg"]',
                'product_due_date' => NULL,
                'business_id' => 4,
                'subcategory_id' => 4,
                'user_id' => 3,
                'created_at' => '2021-06-25 19:38:34',
                'updated_at' => '2021-06-25 19:38:34'
            ],
            [
                "id" => 5,
                'product_name' => 'Tjkl',
                'product_description' => "Uuioooo",
                'product_price' => 3558,
                'product_stock' => 72,
                'product_path_image' => '["product\/product-image-01624668451.jpg"]',
                'product_due_date' => NULL,
                'business_id' => 4,
                'subcategory_id' => 4,
                'user_id' => 3,
                'created_at' => '2021-06-25 19:47:35',
                'updated_at' => '2021-06-25 19:47:35'
            ],
            [
                "id" => 6,
                'product_name' => 'Example',
                'product_description' => "Example Uuioooo",
                'product_price' => 3858,
                'product_stock' => 72,
                'product_path_image' => '["product\/product-image-01624668461.jpg"]',
                'product_due_date' => NULL,
                'business_id' => 4,
                'subcategory_id' => 4,
                'user_id' => 3,
                'created_at' => '2021-06-25 19:47:45',
                'updated_at' => '2021-06-25 19:47:45'
            ],
            [
                "id" => 11,
                'product_name' => 'perro ranchero',
                'product_description' => "hjfghmnc",
                'product_price' => 18000,
                'product_stock' => 8,
                'product_path_image' => 'NULL',
                'product_due_date' => NULL,
                'business_id' => 3,
                'subcategory_id' => 5,
                'user_id' => 2,
                'created_at' => '2021-06-29 20:19:13',
                'updated_at' => '2021-06-29 20:19:13'
            ],
            [
                "id" => 12,
                'product_name' => 'perro mixto',
                'product_description' => "cvnxcccv",
                'product_price' => 25000
                , 'product_stock' => 7,
                'product_path_image' => '["product\/product-image-01625018245.jpg"]',
                'product_due_date' => NULL,
                'business_id' => 3,
                'subcategory_id' => 5,
                'user_id' => 2,
                'created_at' => '2021-06-29 20:57:28',
                'updated_at' => '2021-06-29 20:57:28'
            ],
            [
                "id" => 15,
                'product_name' => 'nevera',
                'product_description' => "nevera blanca con capacidad de 400L",
                'product_price' => 1200000,
                'product_stock' => 13,
                'product_path_image' => 'NULL',
                'product_due_date' => NULL,
                'business_id' => 6,
                'subcategory_id' => 7,
                'user_id' => 2,
                'created_at' => '2021-09-04 08:02:39',
                'updated_at' => '2021-09-04 08:02:39'
            ],
            [
                "id" => 16,
                'product_name' => 'mfofksdkfpok',
                'product_description' => "mvdfnvdvmdo",
                'product_price' => 4000000,
                'product_stock' => 6,
                'product_path_image' => 'NULL',
                'product_due_date' => NULL,
                'business_id' => 4,
                'subcategory_id' => 4,
                'user_id' => 3,
                'created_at' => '2021-09-05 06:40:02',
                'updated_at' => '2021-09-05 06:40:02'
            ],
            [
                "id" => 17,
                'product_name' => 'Maquina de cocer',
                'product_description' => "esta es una maquina de cocer",
                'product_price' => 64000,
                'product_stock' => 10,
                'product_path_image' => '["product\/product-image-01648478384.png","product\/product-image-11648478384.jpg","product\/product-image-21648478384.jpg","product\/product-image-31648478384.jpg","product\/product-image-41648478384.jpg"]',
                'product_due_date' => NULL,
                'business_id' => 1,
                'subcategory_id' => 1,
                'user_id' => 1,
                'created_at' => '2022-03-28 14:39:44',
                'updated_at' => '2022-03-28 14:39:44'
            ],
            [
                "id" => 18,
                'product_name' => 'Vestido Corto',
                'product_description' => "Vestido corto para playa, vestido casual fresco",
                'product_price' => 35500,
                'product_stock' => 10,
                'product_path_image' => '["product\/product-image-01648479317.png","product\/product-image-11648479317.jpg","product\/product-image-21648479317.jpg","product\/product-image-31648479317.jpg","product\/product-image-41648479317.jpg"]',
                'product_due_date' => NULL,
                'business_id' => 1,
                'subcategory_id' => 1,
                'user_id' => 1,
                'created_at' => '2022-03-28 14:55:17',
                'updated_at' => '2022-03-28 14:55:17'
            ],
        ];
        foreach ($products as $value) {
            Product::create(
                [
                    'id' => $value['id'],
                    'product_name' => $value['product_name'],
                    'product_description' => $value['product_description'],
                    'product_price' => $value['product_price'],
                    'product_stock' => $value['product_stock'],
                    'product_path_image' => $value['product_path_image'],
                    'product_due_date' => $value['product_due_date'],
                    'business_id' => $value['business_id'],
                    'subcategory_id' => $value['subcategory_id'],
                    'user_id' => $value['user_id'],
                    'created_at' => $value['created_at'],
                    'updated_at' => $value['updated_at'],
                ]
            );
        }
    }
}
