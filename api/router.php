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
    private $userId;

    public function __construct($requestMethod, $uri)
    {
        $this->requestMethod = $requestMethod;
        $this->uri = $uri;
    }

    public function processRequest()
    {
        // Middleware
        $notNeedToken = [['POST', '/login'], ['POST', '/register']];

        if (!in_array([$this->requestMethod, $this->uri], $notNeedToken)) {
            !$this->checkJWT();
        }
        switch ([$this->requestMethod, $this->uri]) {
            case ['POST', '/login']:
                Auth::login();
                break;
            case ['POST', '/register']:
                Auth::register();
                break;
            case ['GET', '/getID']:
                Auth::getID($this->userId);
                break;
            default:
                echo APIResponse::notFoundResponse();
                break;
        }
    }

    private function checkJWT()
    {
        if (!array_key_exists('HTTP_AUTHORIZATION', $_SERVER))
        {
            echo APIResponse::unauthorized();
            exit;
        }
        if (!preg_match('/Bearer\s(\S+)/', $_SERVER['HTTP_AUTHORIZATION'], $matches)) {
            echo APIResponse::unauthorized('Token not found in request');
            exit;
        }
        $this->userId = Auth::getUserIdByToken($matches[1]);
    }
}
