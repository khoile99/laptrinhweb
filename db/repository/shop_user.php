<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class ShopUser
{
    public static function getIdPasswordByUserName($userName)
    {
        global $dbConnection;
        $dql = "SELECT id, password FROM shop.users WHERE user_name='" . $userName . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return '';
        }

        return $record;
    }

    public static function isEmailExist($email)
    {
        global $dbConnection;
        $dql = "SELECT id FROM shop.users WHERE email='" . $email . "'";
        $record = $dbConnection->query($dql)->rowCount();
        if (!$record) {
            return false;
        }

        return true;
    }

    public static function insert($userName, $password, $address, $phoneNumber, $email, $birthday)
    {
        global $dbConnection;
        $sql = "INSERT INTO shop.users (user_name, password, address, phone_number, email, birthday) VALUES ('$userName', '$password', '$address','$phoneNumber','$email','$birthday') RETURNING id";
        try {
            $result = $dbConnection->query($sql)->fetchObject();
            return $result->id;
        } catch (Exception $e) {
            return null;
        }
    }
}
