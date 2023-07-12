<?php

namespace Pkg;

require_once "vendor/autoload.php";
require_once "config/config.php";

use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use config\Config;
use Exception;

class JwtHelper
{
    public static function encode($data, $secretKey = null)
    {
        $config = new Config();
        $secretKey = $secretKey ?? $config->SECRET_KEY;
        return JWT::encode(
            $data,
            $secretKey,
            'HS512'
        );
    }

    public static function decode($string, $secretKey = null)
    {
        $config = new Config();
        $secretKey = $secretKey ?? $config->SECRET_KEY;
        try {
            $jwt_decode = JWT::decode(
                $string,
                new Key($secretKey, 'HS512')
            );
            return $jwt_decode;
        } catch (Exception $e) {
            return null;
        }
    }
}
