<?php

namespace UseCase;

use Db\repository\Products;

use function PHPSTORM_META\type;

require_once "db/repository/products.php";

class Common
{
    public static function list_products()
    {
        $records = Products::list_products();
        return [200, $records];
    }

    public static function get_product($id)
    {
        $product = Products::get_product($id);
        $imgs = json_decode($product->img);
        $imgsTmp = [];
        foreach ($imgs as $img) {
            $fileName = getcwd() . "/assets/$img";

            // Read image path, convert to base64 encoding
            $imgData = base64_encode(file_get_contents($fileName));

            // Format the image SRC:  data:{mime};base64,{data};
            $src = 'data: ' . mime_content_type($fileName) . ';base64,' . $imgData;
            array_push($imgsTmp, $src);
        }
        $product->img = $imgsTmp;
        return [200, $product];
    }
}
