<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";
require_once "api/handler/validate.php";
require_once "usecase/user.php";

use Api\Handler\APIResponse;
use Api\Handler\Validate;
use UseCase\User as UserUseCase;


class User
{
    public static function edit($userId)
    {
        $formKeys = ["address", "phoneNumber", "email", "birthday"];
        $patterns = ["email" => "", "phoneNumber" => "/^\d{10}$/", "birthday" => ""];
        $patterns = ["address" => "/\S+/", "phoneNumber" => "/^\d{10}$/", "email" => "", "birthday" => ""];

        Validate::validateBody($formKeys, $patterns);

        $password = null;
        if (array_key_exists('password', $_POST)) {
            if ($_POST['password']) $password = $_POST["password"];
        }
        $address = $_POST["address"];
        $phoneNumber = $_POST["phoneNumber"];
        $email = $_POST["email"];
        $birthday = $_POST["birthday"];
        [$statusCode, $body] = UserUseCase::edit($userId, $password, $address, $phoneNumber, $email, $birthday);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function getUser($userId)
    {
        [$statusCode, $body] = UserUseCase::getUser($userId);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }
}
