<?php

namespace Db\repository;

use Exception;

require_once "db/db.php";

class QA
{
    public static function getQA()
    {
        global $dbConnection;
        $dql = "SELECT question,answer FROM shop.qa";
        $records = $dbConnection->query($dql)->fetchAll(\PDO::FETCH_OBJ);
        if (!$records) {
            return null;
        }

        return $records;
    }
}
