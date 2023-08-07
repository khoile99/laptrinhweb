<?php

namespace UseCase;

use Db\repository\Products;

require_once "db/repository/products.php";

class Common
{
    public static function list_products()
    {
        $records = Products::list_products();
        return [200, $records];
    }
}
