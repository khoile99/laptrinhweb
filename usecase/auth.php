<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "db/repository/shop_user.php";

use Pkg\Hash;
use Db\repository\ShopUser;

class Auth
{
    public static function login($userName, $password)
    {
        global $dbConnection;
        $pwd = ShopUser::getPasswordByUserName($userName);
        if (!$pwd) {
            return [400, array("message" => "user not existed")];
        }
        $isVerified = Hash::verify_hash($password, $pwd);
        if (!$isVerified) return [400, array("message" => "Passwrong is wrong")];
        return [200, array("message" => "Login successfully")];
    }
}
