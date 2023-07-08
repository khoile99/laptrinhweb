<?php

namespace Db;

require_once "config/config.php";
use config\Config;

class DatabaseConnector
{
    private $dbConnection = null;

    public function __construct()
    {
        $config = new Config();
        $host = $config->DB_HOST;
        $port = $config->DB_PORT;
        $db   = $config->DB_DATABASE;
        $user = $config->DB_USERNAME;
        $pass = $config->DB_PASSWORD;

        try {
            $this->dbConnection = new \PDO(
                "pgsql:host=$host;port=$port;dbname=$db",
                $user,
                $pass
            );
        } catch (\PDOException $e) {
            exit($e->getMessage());
        }
    }

    public function getConnection()
    {
        return $this->dbConnection;
    }
}

$dbConnection = (new DatabaseConnector())->getConnection();
