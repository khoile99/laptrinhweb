<?php

namespace UseCase;

require_once "pkg/hash.php";
require_once "pkg/jwt.php";
require_once "db/repository/users.php";
require_once "db/repository/comments.php";
require_once "db/repository/orders.php";

use Pkg\Hash;
use Db\repository\Users;
use Db\repository\Comments;
use Db\repository\Orders;

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

    public static function getCarts($userId)
    {
        $records = Orders::listCarts($userId);
        for ($i = 0; $i < count($records); $i++) {

            $img = $records[$i]->img;
            $fileName = getcwd() . "/assets/$img";

            // Read image path, convert to base64 encoding
            $imgData = base64_encode(file_get_contents($fileName));

            // Format the image SRC:  data:{mime};base64,{data};
            $src = 'data: ' . mime_content_type($fileName) . ';base64,' . $imgData;
            $records[$i]->img = $src;
        }
        return [200, $records];
    }

    public static function deleteCart($userId, $orderId)
    {
        $order = Orders::deleteCartByUserIdOrderId($userId, $orderId);
        if ($order == null) return [400, array('message' => "Delete unsuccessfully")];

        return [200, array('message' => "Deleted Successfully")];
    }

    public static function updateCart($userId, $id, $number)
    {
        $isUpdated = Orders::updateNumber($userId, $id, $number);
        if (!$isUpdated) return [400, array('message' => "update unsuccessfully")];

        return [200, array('message' => "Updated successfully")];
    }

    public static function addCart($userId, $id, $number)
    {
        $isUpdated = Orders::addCart($userId, $id, $number);
        if (!$isUpdated) return [400, array('message' => "Added unsuccessfully")];

        return [200, array('message' => "Added successfully")];
    }
}
