<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class Comments
{
    public static function getCommentsByProductId($id)
    {
        global $dbConnection;
        $dql = "SELECT cmnt.id,usr.user_name,comment,created_at FROM shop.comments cmnt LEFT JOIN shop.users usr ON usr.id =  user_id WHERE product_id = $id ORDER BY created_at DESC";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }

    public static function addComment($userId, $productId, $comment)
    {
        global $dbConnection;
        $dql = "INSERT INTO shop.comments (user_id, product_id, comment) VALUES ($userId, $productId, '$comment') RETURNING id,created_at";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }
}
