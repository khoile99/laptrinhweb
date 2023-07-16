<?php

namespace Api\Handler;

require_once "api/handler/api_response.php";

use Api\Handler\APIResponse;

class Validate
{
    public static function checkKeysExists(array $formKeys)
    {
        foreach ($formKeys as $formKey) {
            if (!array_key_exists($formKey, $_POST)) {
                echo APIResponse::badRequest(array("message" => "Not found " . $formKey));
                exit;
            }
        }
    }
}
