<?php

namespace Pkg;

class Hash
{
    public static function get_hash($string)
    {
        return password_hash($string, PASSWORD_DEFAULT, array('cost' => 9));
    }
    public static function verify_hash($string, $hash)
    {
        return password_verify($string, $hash);
    }
}
