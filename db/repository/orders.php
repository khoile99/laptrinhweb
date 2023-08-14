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
        if (!$records) {
            return null;
        }

        return $records;
    }

    public static function deleteCartByUserIdOrderId($userId, $orderId)
    {
        global $dbConnection;
        $dql = "DELETE FROM shop.orders WHERE user_id=$userId AND id=$orderId";
        $dbConnection->query($dql);
        return $orderId;
    }
}
