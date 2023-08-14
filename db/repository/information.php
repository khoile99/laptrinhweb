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

    public static function editPhone($phone)
    {
        global $dbConnection;
        $dql = "UPDATE shop.information SET value='$phone' WHERE key='phone'";
        $dbConnection->query($dql);
        return $phone;
    }

    public static function editaddress($address)
    {
        global $dbConnection;
        $dql = "UPDATE shop.information SET value='$address' WHERE key='address'";
        $dbConnection->query($dql);
        return $address;
    }

    public static function editEmail($email)
    {
        global $dbConnection;
        $dql = "UPDATE shop.information SET value='$email' WHERE key='email'";
        $dbConnection->query($dql);
        return $email;
    }
}
