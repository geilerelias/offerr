<?php

namespace Database\Seeders;

use App\Models\Business;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BusinessSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $business = [
            ["id" => 1, "business_path_cover_image" => "business/business-image-cover-1627099945.jpg", "business_path_profile_image" => "business/business-image-profile-1627099945.jpg", "business_name" => "Comercio #1", "business_acronym" => "undefined", "business_email" => "comercio1@mail.com", "business_phone" => "17651765113", "business_website" => "null", "business_department" => "Colombia", "business_city" => "Barrancabermeja", "business_address" => "calle 31 # 23 - 45", "business_subcategory" => NULL, "user_id" => 1, "category_id" => 1, "created_at" => "2021-06-24T04:12:06.000000Z", "updated_at" => "2021-07-23T23:12:25.000000Z"],
            ["id" => 2, "business_path_cover_image" => "business/business-image-cover-1649437603.jpeg", "business_path_profile_image" => "business/business-image-profile-1649437603.jpg", "business_name" => "Comercio #2", "business_acronym" => "undefined", "business_email" => "comercio2@mail.com", "business_phone" => "3106947004", "business_website" => "null", "business_department" => "Colombia", "business_city" => "Riohacha", "business_address" => "CALLE 32 # 23-45", "business_subcategory" => "null", "user_id" => 1, "category_id" => 2, "created_at" => "2021-06-24T04:14:09.000000Z", "updated_at" => "2022-04-08T17:08:51.000000Z"],
            ["id" => 3, "business_path_cover_image" => "business/business-image-cover-1625015386.png", "business_path_profile_image" => "business/business-image-profile-1625015386.jpg", "business_name" => "kjhghj", 'business_acronym' => "undefined", 'business_email' => "q@gmail.com", 'business_phone' => "1204578", 'business_website' => null, 'business_department' => "Colombia", 'business_city' => "Valledupar", 'business_address' => "cll23", 'business_subcategory' => NULL, 'user_id' => 2, 'category_id' => 1,],
            ['id' => 4, 'business_path_cover_image' => "business / business - image - cover - 1624667746.jpg", 'business_path_profile_image' => "business/business - image - profile - 1624667746.jpg", 'business_name' => "Coma rico", 'business_acronym' => "undefined", 'business_email' => "Ivanmejia-07@hotmail.com", 'business_phone' => 3002789024, 'business_website' => "Comarico.Co", 'business_department' => "Colombia", 'business_city' => "Barranquilla", 'business_address' => "Udjdkkdkd", 'business_subcategory' => NULL, 'user_id' => 3, 'category_id' => 1],
            ['id' => 5, 'business_path_cover_image' => null, 'business_path_profile_image' => "business / business - image - profile - 1630841907.jpg", 'business_name' => "Ufudjdidid", 'business_acronym' => "undefined", 'business_email' => "Ivanmejia - 07@hotmail . com", 'business_phone' => "1263", 'business_website' => "Yuiii", 'business_department' => "Amazonas", 'business_city' => "Leticia", 'business_address' => "Ydydjzizizozoz", 'business_subcategory' => NULL, 'user_id' => 3, 'category_id' => 4],
            ['id' => 6, 'business_path_cover_image' => NULL, 'business_path_profile_image' => NULL, 'business_name' => "Tecnosistem", 'business_acronym' => "undefined", 'business_email' => "tecnosistem@gmail.com", 'business_phone' => "5803070", 'business_website' => NULL, 'business_department' => "Cesar", 'business_city' => "Agustín Codazzi", 'business_address' => "cll 8# 34b 20", 'business_subcategory' => NULL, 'user_id' => 2, 'category_id' => 5,],
            ['id' => 7, 'business_path_cover_image' => NULL, 'business_path_profile_image' => NULL, 'business_name' => "comercio23", 'business_acronym' => "undefined", 'business_email' => "comercio23@gmail . com", 'business_phone' => "3214567890", 'business_website' => NULL, 'business_department' => "Arauca", 'business_city' => "Fortul", 'business_address' => "cll23", 'business_subcategory' => NULL, 'user_id' => 2, 'category_id' => 4,],
        ];

        foreach ($business as $value) {
            Business::create([
                'id' => $value['id'],
                'business_path_cover_image' => $value['business_path_cover_image'],
                'business_path_profile_image' => $value['business_path_profile_image'],
                'business_name' => $value['business_name'],
                'business_acronym' => $value['business_acronym'],
                'business_email' => $value['business_email'],
                'business_phone' => $value['business_phone'],
                'business_website' => $value['business_website'],
                'business_department' => $value['business_department'],
                'business_city' => $value['business_city'],
                'business_address' => $value['business_address'],
                'business_subcategory' => $value['business_subcategory'],
                'user_id' => $value['user_id'],
                'category_id' => $value['category_id'],
            ]);
        }
    }
}
