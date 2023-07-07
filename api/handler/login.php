<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";

use Api\Handler\APIResponse;

class Login
{
    public static function login()
    {
        $userName = $_POST["userName"];
        $password = $_POST["password"];
        $body = array("userName" => $userName, "password" => $password);
        echo APIResponse::successResponse($body);
    }
}
