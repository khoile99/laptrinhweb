<?php

namespace UseCase;

use Db\repository\Products;
use Db\repository\Comments;

use function PHPSTORM_META\type;

require_once "db/repository/products.php";
require_once "db/repository/comments.php";

class Common
{
    public static function list_products()
    {
        $records = Products::list_products();
        $products = json_decode(json_encode($records), true);
        for ($i = 0; $i < count($products); $i++) {
            $img = json_decode($products[$i]['img'])[0];
            $fileName = getcwd() . "/assets/$img";
            $imgData = base64_encode(file_get_contents($fileName));
            $src = 'data: ' . mime_content_type($fileName) . ';base64,' . $imgData;
            $products[$i]['img'] = [$src];
        }
        return [200, $products];
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

    public static function get_comment($id)
    {
        $comments = Comments::getCommentsByProductId($id);
        return [200, $comments];
    }
}
