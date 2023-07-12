<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class ShopUser
{
    public static function getIdPasswordByUserName($userName)
    {
        global $dbConnection;
        $dql = "SELECT id, password FROM shop_user WHERE username='" . $userName . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return '';
        }

        return $record;
    }

    public static function insert($userName, $password)
    {
        global $dbConnection;
        $sql = "INSERT INTO shop_user (username, password) VALUES ('$userName', '$password') RETURNING id";
        try {
            $result = $dbConnection->query($sql)->fetchObject();
            return $result->id;
        } catch (Exception $e) {
            return null;
        }
    }
}
