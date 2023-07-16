<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "pkg/jwt.php";
require_once "db/repository/shop_user.php";

use Api\Handler\APIResponse;
use DateTime;
use Pkg\Hash;
use Db\repository\ShopUser;
use Pkg\JwtHelper;

class Auth
{
    public static function login($userName, $password)
    {
        global $dbConnection;
        $record = ShopUser::getIdPasswordByUserName($userName);
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

    public static function register($userName, $password, $address, $phoneNumber, $email, $birthday)
    {
        $record = ShopUser::getIdPasswordByUserName($userName);
        if ($record) return [409, array("message" => "user already existed")];
        $record = ShopUser::isEmailExist($email);
        if ($record) return [409, array("message" => "email already existed")];
        $hashPwd = Hash::getHash($password);
        $userId = ShopUser::insert($userName, $hashPwd, $address, $phoneNumber, $email, $birthday);
        if ($userId) return [201, array("message" => "User is Created")];
        return [500, 'Server error'];
    }
}
