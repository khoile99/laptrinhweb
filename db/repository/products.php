<?php

namespace Db\repository;

require_once "db/db.php";

class Products
{
    public static function list_products()
    {
        global $dbConnection;
        $dql = "SELECT id, name, description, brand, color, material, size FROM shop.products ORDER BY name ASC";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }

    public static function get_product($id)
    {
        global $dbConnection;
        $dql = "SELECT id,name,description,brand,color,material,size,array_to_json(img) AS img FROM shop.products WHERE id=$id";
        $product = $dbConnection->query($dql)->fetchObject();
        return $product;
    }
}
