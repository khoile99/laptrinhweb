<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "pkg/jwt.php";
require_once "db/repository/users.php";
require_once "db/repository/admins.php";

use DateTime;
use Pkg\Hash;
use Db\repository\Users;
use Db\repository\Admins;
use Pkg\JwtHelper;

class Auth
{
    public static function login($userName, $password)
    {
        $record = Users::getIdPasswordByUserName($userName);
        if (!$record) {
            return [400, array("message" => "user not existed")];
        }
        $isVerified = Hash::verifyHash($password, $record->password);
        if (!$isVerified) return [400, array("message" => "Passwrong is wrong")];
        $issuedAt = new DateTime();
        $expire = $issuedAt->modify('+1 day')->getTimestamp();
        $data = JwtHelper::encode(array("id" => $record->id, 'exp' => $expire));
        return [200, array("token" => $data)];
    }

    public static function loginAdmin($userName, $password)
    {
        $record = Admins::getIdPasswordByUserName($userName);
        if (!$record) {
            return [400, array("message" => "user not existed")];
        }
        $isVerified = Hash::verifyHash($password, $record->password);
        if (!$isVerified) return [400, array("message" => "Passwrong is wrong")];
        $issuedAt = new DateTime();
        $expire = $issuedAt->modify('+1 day')->getTimestamp();
        $data = JwtHelper::encode(array("id" => $record->id, "isAdmin" => true, 'exp' => $expire));
        return [200, array("token" => $data)];
    }

    public static function register($userName, $password, $address, $phoneNumber, $email, $birthday)
    {
        $record = Users::getIdPasswordByUserName($userName);
        if ($record) return [409, array("message" => "user already existed")];
        $record = Users::isEmailExist($email);
        if ($record) return [409, array("message" => "email already existed")];
        $hashPwd = Hash::getHash($password);
        $userId = Users::insert($userName, $hashPwd, $address, $phoneNumber, $email, $birthday);
        if ($userId) return [201, array("message" => "User is Created")];
        return [500, 'Server error'];
    }

    public static function isBocked($userID, $userName)
    {
        if ($userID || $userName) {
            if ($userID) {
                $record = Users::getIsBlockedByID($userID);
                if (!$record) return true;
                return $record->is_blocked;
            }
            if ($userName) {
                $record = Users::getIsBlockedByUsername($userName);
                if (!$record) return false;
                return $record->is_blocked;
            }
        }
        return false;
    }
}
