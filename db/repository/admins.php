<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class Admins
{
    public static function getIdPasswordByUserName($userName)
    {
        global $dbConnection;
        $dql = "SELECT id, password FROM shop.admins WHERE user_name='" . $userName . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return null;
        }

        return $record;
    }

    public static function getAdmin($id)
    {
        global $dbConnection;
        $dql = "SELECT id,user_name,email FROM shop.admins WHERE id=$id";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return null;
        }
        return $record;
    }
}
