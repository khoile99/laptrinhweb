<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";
require_once "usecase/auth.php";

use Api\Handler\APIResponse;
use UseCase\Auth as AuthUseCase;


class Auth
{
    public static function login()
    {
        global $dbConnection;
        $userName = $_POST["userName"];
        $password = $_POST["password"];
        [$statusCode, $body] = AuthUseCase::login($userName, $password);
        if ($statusCode == 200) $_SESSION["favcolor"] = "green";
        echo APIResponse::processResponseCommon($statusCode, $body);
    }
}
