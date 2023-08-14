<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "pkg/jwt.php";
require_once "db/repository/users.php";

use Db\repository\Users;

class Admin
{
    public static function listUser()
    {
        $userList = Users::listUsers();
        return [200, $userList];
    }

    public static function deleteUser($id)
    {
        $user_id = Users::deleteUser($id);
        if ($user_id == null) return [400, array("message" => "Delete unsuccessfully")];
        return [200, array("message" => "Deleted successfully")];
    }

    public static function editUser($userId, $address, $phoneNumber, $email, $birthday, $isBlocked, $userType)
    {
        $user = Users::editUserByAdmin($userId, $address, $phoneNumber, $email, $birthday, $isBlocked, $userType);
        if ($user == null) return [400, array("message" => "Update unsuccessfully")];
        return [200, $user];
    }
}
