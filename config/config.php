<?php

namespace config;

require 'vendor/autoload.php';

use Dotenv\Dotenv;


$dotenv = new DotEnv(__DIR__ . "\..");
$dotenv->load();

class Config {
    public $DB_HOST;
    public $DB_PORT;
    public $DB_DATABASE;
    public $DB_USERNAME;
    public $DB_PASSWORD;
    public $BASE_URL;
    function __construct()
    {
        $this->DB_HOST = getenv('DB_HOST');
        $this->DB_PORT = getenv('DB_PORT');
        $this->DB_DATABASE = getenv('DB_DATABASE');
        $this->DB_USERNAME = getenv('DB_USERNAME');
        $this->DB_PASSWORD = getenv('DB_PASSWORD');
        $this->BASE_URL = getenv("BASE_URL");
    }
}
