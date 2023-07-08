<?php

namespace Db\repository;

require_once "db/db.php";

class ShopUser
{
    public static function getPasswordByUserName($userName)
    {
        global $dbConnection;
        $dql = "SELECT password FROM shop_user WHERE username='" . $userName . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return '';
        }
        return $record->password;
    }
}
