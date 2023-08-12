<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "pkg/jwt.php";
require_once "db/repository/users.php";
require_once "db/repository/comments.php";

use Pkg\Hash;
use Db\repository\Users;
use Db\repository\Comments;

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

    public static function getUser($userId)
    {
        $user = Users::getUserById($userId);
        return [200, $user];
    }

    public static function addComment($userId, $productId, $comment)
    {
        $records = Comments::addComment($userId, $productId, $comment);
        $user = Users::getUsernameById($userId);
        $body = array('user_name' => $user, 'created_at' => $records[0]->created_at, 'id' => $records[0]->id, 'comment' => $comment);
        return [200, $body];
    }
}
