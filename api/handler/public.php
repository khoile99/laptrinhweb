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

    public static function searchProduct()
    {
        $uriList = explode('/', $_SERVER['REQUEST_URI']);
        $keyword = $uriList[count($uriList) - 1];
        [$code, $products] = CommonUseCase::searchProduct($keyword);
        echo APIResponse::processResponseCommon($code, $products);
    }

    public static function get_comment()
    {
        $uriList = explode('/', $_SERVER['REQUEST_URI']);
        $id = $uriList[count($uriList) - 1];
        [$code, $comments] = CommonUseCase::get_comment($id);
        echo APIResponse::processResponseCommon($code, $comments);
    }

    public static function get_qa()
    {
        [$code, $qas] = CommonUseCase::get_qa();
        echo APIResponse::processResponseCommon($code, $qas);
    }

    public static function get_information()
    {
        [$code, $info] = CommonUseCase::get_information();
        echo APIResponse::processResponseCommon($code, $info);
    }
}
