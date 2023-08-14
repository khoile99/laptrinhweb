<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";

use Api\Handler\APIResponse;
use Exception;

class Validate
{
    public static function validateBody($formKeys, $patterns)
    {
        if ($formKeys) {
            self::checkKeysExists($formKeys);
        }
        if ($patterns) {
            self::checkPattern($patterns);
        }
    }
    public static function checkKeysExists($formKeys)
    {
        foreach ($formKeys as $formKey) {
            if (!array_key_exists($formKey, $_POST)) {
                echo APIResponse::badRequest(array("message" => "Not found " . $formKey));
                exit;
            }
        }
    }

    public static function checkPattern($patterns)
    {
        foreach ($patterns as $key => $reg) {
            if ($key == "email") {
                if (!filter_var($_POST[$key], FILTER_VALIDATE_EMAIL)) {
                    echo APIResponse::badRequest(array("message" => $key . " is wrong"));
                    exit;
                }
            } elseif ($key == "birthday") {
                $date = $_POST[$key];
                try {
                    [$year, $month, $day] = explode("-", $_POST[$key]);
                    if (!checkdate((int) $month, (int) $day, (int) $year)) {
                        echo APIResponse::badRequest(array("message" => $key . " is wrong"));
                        exit;
                    }
                } catch (Exception $e) {
                    echo APIResponse::badRequest(array("message" => $key . " is wrong"));
                    exit;
                }
            } elseif ($reg == "") continue;
            elseif (!preg_match($reg, $_POST[$key])) {
                echo APIResponse::badRequest(array("message" => $key . " is wrong"));
                exit;
            }
        }
    }
}
