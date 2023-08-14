<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class Products
{
    public static function list_products()
    {
        global $dbConnection;
        $dql = "SELECT id, name,price, description, brand, color, material, size,array_to_json(img) as img FROM shop.products ORDER BY name ASC";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }

    public static function get_product($id)
    {
        global $dbConnection;
        $dql = "SELECT id,name,price,description,brand,color,material,size,array_to_json(img) AS img FROM shop.products WHERE id=$id";
        $product = $dbConnection->query($dql)->fetchObject();
        return $product;
    }

    public static function deleteProduct($id)
    {
        global $dbConnection;
        $dql = "DELETE FROM shop.products WHERE id=$id";
        $records = $dbConnection->query($dql);
        return $id;
    }

    public static function editProduct($id, $name, $price, $description, $brand, $color, $material, $size)
    {
        global $dbConnection;
        if ($id || $name || $price || $description || $brand || $color || $material || $size) {
            $sql = "UPDATE shop.products SET ";
            if ($name) $sql = $sql . "name='$name',";
            if ($price) $sql = $sql . "price='$price',";
            if ($description) $sql = $sql . "description='$description',";
            $sql = $sql . "brand='$brand',";
            $sql = $sql . "color='$color',";
            $sql = $sql . "material='$material',";
            $sql = $sql . "size='$size',";
            $sql = substr($sql, 0, strlen($sql) - 1);
            if ($id) $sql = "$sql WHERE id=$id returning *";
            else return null;
            try {
                $result = $dbConnection->query($sql)->fetchObject();
                if ($result) return $result;
                return null;
            } catch (Exception $e) {
                return null;
            }
        }
        return null;
    }
}
