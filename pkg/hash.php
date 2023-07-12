<?php

namespace Pkg;

class Hash
{
    public static function getHash($string)
    {
        return password_hash($string, PASSWORD_DEFAULT, array('cost' => 9));
    }
    public static function verifyHash($string, $hash)
    {
        return password_verify($string, $hash);
    }
}
