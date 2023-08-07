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
}
