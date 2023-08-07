<?php

namespace Db\repository;

require_once "db/db.php";

class Products
{
    public static function list_products()
    {
        global $dbConnection;
        $dql = "SELECT id, name, description, brand, color, material, size FROM shop.products";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }
}
