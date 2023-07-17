<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";
require_once "api/handler/validate.php";
require_once "usecase/auth.php";

use Api\Handler\APIResponse;
use Api\Handler\Validate;
use Pkg\JwtHelper;
use UseCase\Auth as AuthUseCase;


class Auth
{
    public static function login()
    {
        $formKeys = ["userName", "password"];
        Validate::validateBody($formKeys, null);

        $userName = $_POST["userName"];
        $password = $_POST["password"];
        [$statusCode, $body] = AuthUseCase::login($userName, $password);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function loginAdmin()
    {
        $formKeys = ["userName", "password"];
        Validate::validateBody($formKeys, null);

        $userName = $_POST["userName"];
        $password = $_POST["password"];
        [$statusCode, $body] = AuthUseCase::loginAdmin($userName, $password);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function register()
    {
        $formKeys = ["userName", "password", "address", "phoneNumber", "email", "birthday"];
        $patterns = ["userName" => "/\S+/", "password" => "/\S+/", "address" => "/\S+/", "phoneNumber" => "/^\d{10}$/", "email" => "", "birthday" => ""];
        Validate::validateBody($formKeys, $patterns);

        $userName = $_POST["userName"];
        $password = $_POST["password"];
        $address = $_POST["address"];
        $phoneNumber = $_POST["phoneNumber"];
        $email = $_POST["email"];
        $birthday = $_POST["birthday"];
        [$statusCode, $body] = AuthUseCase::register($userName, $password, $address, $phoneNumber, $email, $birthday);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function getUserIdByToken($token)
    {
        $token_decode = JwtHelper::decode($token);
        if (!$token_decode) {
            echo APIResponse::unauthorized('Token is wrong');
            exit;
        }
        $userId = null;
        $adminId = null;

        if (property_exists( $token_decode,'isAdmin')) $adminId = $token_decode->id;
        else $userId = $token_decode->id;

        return [$userId, $adminId];
    }

    public static function getID($userId)
    {
        echo APIResponse::successResponse($userId);
    }

    public static function checkBlocked($userId)
    {
        $userName = null;
        if (array_key_exists('userName', $_POST)) $userName = $_POST['userName'];
        if (AuthUseCase::isBocked($userId, $userName)) {
            echo APIResponse::forbidden();
            exit;
        }
    }
}
