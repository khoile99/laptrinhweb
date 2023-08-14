<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";
require_once "api/handler/validate.php";
require_once "usecase/user.php";
require_once "usecase/admin.php";

use Api\Handler\APIResponse;
use UseCase\User as UserUseCase;
use UseCase\Admin as AdminUseCase;


class Admin
{
    public static function getUser()
    {
        $uriList = explode('/', $_SERVER['REQUEST_URI']);
        $userId = $uriList[count($uriList) - 1];
        [$statusCode, $body] = UserUseCase::getUser($userId);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function deleteUser()
    {
        $uriList = explode('/', $_SERVER['REQUEST_URI']);
        $userId = $uriList[count($uriList) - 1];
        [$statusCode, $body] = AdminUseCase::deleteUser($userId);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function listUser()
    {
        [$statusCode, $body] = AdminUseCase::listUser();
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function editUser()
    {

        $formKeys = ["userId", "address", "phoneNumber", "email", "birthday", "isBlocked", "userType"];
        $patterns = ["userId" => "/\d+/", "address" => "/\S+/", "phoneNumber" => "/^\d{10}$/", "email" => "", "birthday" => "", "isBlocked" => "/\S+/", "userType" => "/^\d{1}$/"];

        Validate::validateBody($formKeys, $patterns);

        $userId = $_POST["userId"];
        $address = $_POST["address"];
        $phoneNumber = $_POST["phoneNumber"];
        $email = $_POST["email"];
        $birthday = $_POST["birthday"];
        $isBlocked = $_POST["isBlocked"];
        $userType = $_POST["userType"];
        [$statusCode, $body] = AdminUseCase::editUser($userId, $address, $phoneNumber, $email, $birthday, $isBlocked, $userType);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function changeAddress()
    {

        $formKeys = ["phone", "address", "email"];
        $patterns = ["phone" => "/^\d{10}$/", "address" => "/\S+/", "email" => ""];

        Validate::validateBody($formKeys, $patterns);

        $phone = $_POST["phone"];
        $address = $_POST["address"];
        $email = $_POST["email"];
        [$statusCode, $body] = AdminUseCase::editAddress($phone, $address, $email);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }
}
