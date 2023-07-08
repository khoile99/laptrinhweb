<?php

namespace Api;

require_once "api/handler/api_response.php";
require_once "api/handler/auth.php";

use Api\Handler\APIResponse;
use Api\Handler\Auth;

class Router
{
    private $requestMethod;
    private $uri;

    public function __construct($requestMethod, $uri)
    {
        $this->requestMethod = $requestMethod;
        $this->uri = $uri;
    }

    public function processRequest()
    {
        switch ([$this->requestMethod,$this->uri]) {
            case ['POST','/login']:
                Auth::login();
                break;
            default:
                echo APIResponse::notFoundResponse();
                break;
        }
    }
}
