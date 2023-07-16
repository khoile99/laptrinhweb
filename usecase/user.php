<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "pkg/jwt.php";
require_once "db/repository/users.php";

use Pkg\Hash;
use Db\repository\Users;

class User
{
    public static function edit($userId, $password, $address, $phoneNumber, $email, $birthday)
    {
        $id = Users::getIDByEmail($email);
        if ($id && ($userId != $id)) return [400, array("message" => "Email is existed")];


        $hashPwd = null;
        if ($password) $hashPwd = Hash::getHash($password);
        $userId = Users::edit($userId, $hashPwd, $address, $phoneNumber, $email, $birthday);
        if ($userId) return [200, array("message" => "User is updated")];
        return [500, 'Server error'];
    }
}
