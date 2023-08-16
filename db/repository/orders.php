<?php

namespace Db\repository;

require_once "db/db.php";

class Orders
{
    public static function listCarts($userId)
    {
        global $dbConnection;
        $dql = "SELECT ord.id, product_id, number, prod.name, prod.img[1], prod.price, prod.brand FROM shop.orders ord LEFT JOIN shop.products prod ON prod.id = product_id WHERE user_id = $userId";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        return $records;
    }

    public static function deleteCartByUserIdOrderId($userId, $orderId)
    {
        global $dbConnection;
        $dql = "DELETE FROM shop.orders WHERE user_id=$userId AND id=$orderId";
        $dbConnection->query($dql);
        return $orderId;
    }

    public static function updateNumber($userId, $id, $number)
    {
        global $dbConnection;
        $dql = "UPDATE shop.orders SET number=$number WHERE user_id=$userId AND id=$id";
        $dbConnection->query($dql);
        return true;
    }

    public static function addCart($userId, $id, $number)
    {
        global $dbConnection;
        $dql = "INSERT INTO shop.orders (user_id, product_id,number) VALUES($userId,$id,$number)";
        $dbConnection->query($dql);
        return true;
    }
}
