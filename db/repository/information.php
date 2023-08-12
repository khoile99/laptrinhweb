<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class Information
{
    public static function getAddress()
    {
        global $dbConnection;
        $dql = "with address as (SELECT value FROM shop.information WHERE key='address'),
        phone as (SELECT value FROM shop.information WHERE key='phone'),
        email as (SELECT value FROM shop.information WHERE key='email')
        SELECT email.value as email, address.value as address, phone.value as phone FROM email,phone,address";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }
}
