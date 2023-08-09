<?php

namespace Api;

require_once "api/handler/api_response.php";
require_once "api/handler/auth.php";
require_once "api/handler/user.php";
require_once "api/handler/public.php";

use Api\Handler\APIResponse;
use Api\Handler\Auth;
use Api\Handler\AuthAdmin;
use Api\Handler\Common;
use Api\Handler\User;

class Router
{
    private $requestMethod;
    private $uri;
    private $userId;
    private $adminId;

    public function __construct($requestMethod, $uri)
    {
        $this->requestMethod = $requestMethod;
        $this->uri = $uri;
    }

    public function processRequest()
    {
        // Middleware
        $uriList = explode('/', $this->uri);

        if ($uriList[1] == 'public') {
            if ($uriList[2] == 'get_product' && $this->requestMethod == "GET") {
                Common::get_product();
                return;
            }

            switch ([$this->requestMethod, $this->uri]) {
                case ['GET', '/public/list_products']:
                    Common::list_products();
                    break;
                default:
                    echo APIResponse::notFoundResponse();
                    break;
            }
        } else {
            $notNeedToken = [['ADMIN', '/admin/login'], ['POST', '/login'], ['POST', '/register']];
            if (!in_array([$this->requestMethod, $this->uri], $notNeedToken)) {
                $this->checkJWT();
            }

            if ($uriList[1] == 'admin') {
                if (!in_array([$this->requestMethod, $this->uri], $notNeedToken) && !$this->adminId) {
                    echo APIResponse::unauthorized('Token is wrong');
                    exit;
                }

                switch ([$this->requestMethod, $this->uri]) {
                    case ['POST', '/admin/login']:
                        Auth::loginAdmin();
                        break;
                    case ['GET', '/admin/getID']:
                        Auth::getID($this->adminId);
                        break;
                    default:
                        echo APIResponse::notFoundResponse();
                        break;
                }
            } else {
                if (!in_array([$this->requestMethod, $this->uri], $notNeedToken) && !$this->userId) {
                    echo APIResponse::unauthorized('Token is wrong');
                    exit;
                }

                $this->checkBlocked();

                switch ([$this->requestMethod, $this->uri]) {
                    case ['POST', '/login']:
                        Auth::login();
                        break;
                    case ['POST', '/register']:
                        Auth::register();
                        break;
                    case ['POST', '/edit']:
                        User::edit($this->userId);
                        break;
                    case ['GET', '/getID']:
                        Auth::getID($this->userId);
                        break;
                    default:
                        echo APIResponse::notFoundResponse();
                        break;
                }
            }
        }
    }

    private function checkJWT()
    {
        if (!array_key_exists('HTTP_AUTHORIZATION', $_SERVER)) {
            echo APIResponse::unauthorized();
            exit;
        }
        if (!preg_match('/Bearer\s(\S+)/', $_SERVER['HTTP_AUTHORIZATION'], $matches)) {
            echo APIResponse::unauthorized('Token not found in request');
            exit;
        }
        [$this->userId, $this->adminId] = Auth::getUserIdByToken($matches[1]);
    }

    private function checkBlocked()
    {
        Auth::checkBlocked($this->userId);
    }
}
