<?php

namespace db;

class DatabaseConnector
{
    private $dbConnection = null;

    public function __construct()
    {
        $configs = include('config/config.php');
        $host = $configs["DB_HOST"];
        $port = $configs["DB_PORT"];
        $db   = $configs["DB_DATABASE"];
        $user = $configs["DB_USERNAME"];
        $pass = $configs["DB_PASSWORD"];

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
