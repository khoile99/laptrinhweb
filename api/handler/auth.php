<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";
require_once "usecase/auth.php";

use Api\Handler\APIResponse;
use Pkg\JwtHelper;
use UseCase\Auth as AuthUseCase;


class Auth
{
    public static function login()
    {
        global $dbConnection;
        $userName = $_POST["userName"];
        $password = $_POST["password"];
        [$statusCode, $body] = AuthUseCase::login($userName, $password);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function register()
    {
        global $dbConnection;
        $userName = $_POST["userName"];
        $password = $_POST["password"];
        [$statusCode, $body] = AuthUseCase::register($userName, $password);
        echo APIResponse::processResponseCommon($statusCode, $body);
    }

    public static function getUserIdByToken($token)
    {
        $token_decode = JwtHelper::decode($token);
        if (!$token_decode) {
            echo APIResponse::unauthorized('Token is wrong');
            exit;
        }
        $userId = $token_decode->id;

        return $userId;
    }

    public static function getID($userId)
    {
        echo APIResponse::successResponse($userId);
    }
}
