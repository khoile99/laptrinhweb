<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";
require_once "usecase/public.php";

use Api\Handler\APIResponse;
use UseCase\Common as CommonUseCase;


class Common
{
    public static function list_products()
    {
        [$code, $records] = CommonUseCase::list_products();
        echo APIResponse::processResponseCommon($code, $records);
    }

    public static function get_product()
    {
        $uriList = explode('/', $_SERVER['REQUEST_URI']);
        $id = $uriList[count($uriList) - 1];
        [$code, $product] = CommonUseCase::get_product($id);
        echo APIResponse::processResponseCommon($code, $product);
    }
}
