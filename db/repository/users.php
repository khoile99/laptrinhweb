<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class Users
{
    public static function getIdPasswordByUserName($userName)
    {
        global $dbConnection;
        $dql = "SELECT id, password FROM shop.users WHERE user_name='" . $userName . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return null;
        }

        return $record;
    }

    public static function getIDByEmail($email)
    {
        global $dbConnection;
        $dql = "SELECT id FROM shop.users WHERE email='" . $email . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        if (!$record) {
            return null;
        }

        return $record->id;
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

    public static function edit($userId, $password, $address, $phoneNumber, $email, $birthday)
    {
        global $dbConnection;
        if ($userId || $password || $address || $phoneNumber || $email || $birthday) {
            $sql = "UPDATE shop.users SET ";
            if ($password) $sql = $sql . "password='$password',";
            if ($address) $sql = $sql . "address='$address',";
            if ($phoneNumber) $sql = $sql . "phone_number='$phoneNumber',";
            if ($email) $sql = $sql . "email='$email',";
            if ($birthday) $sql = $sql . "birthday='$birthday',";
            $sql = substr($sql, 0, strlen($sql) - 1);
            if ($userId) $sql = $sql . "WHERE id=$userId";
            else return null;
            try {
                $result = $dbConnection->query($sql);
                if ($result) return $userId;
                return null;
            } catch (Exception $e) {
                return null;
            }
        }
        return null;
    }

    public static function getIsBlockedByID($id)
    {
        global $dbConnection;
        $dql = "SELECT is_blocked FROM shop.users WHERE id='" . $id . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        return $record;
    }

    public static function getIsBlockedByUsername($userName)
    {
        global $dbConnection;
        $dql = "SELECT is_blocked FROM shop.users WHERE user_name='" . $userName . "'";
        $record = $dbConnection->query($dql)->fetchObject();
        return $record;
    }

    public static function getUserById($id)
    {
        global $dbConnection;
        $dql = "SELECT user_name, address, phone_number,email,birthday,user_type,is_blocked FROM shop.users WHERE id='$id'";
        $record = $dbConnection->query($dql)->fetchObject();
        return $record;
    }
}
