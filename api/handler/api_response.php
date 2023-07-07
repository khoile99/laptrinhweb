<?php

namespace Api\Handler;

class APIResponse
{
    public static function unprocessableEntityResponse($body = null)
    {
        header('HTTP/1.1 422 Unprocessable Entity');
        if (!$body) $body = ['message' => 'Invalid input'];
        return json_encode($body);
    }

    public static function notFoundResponse($body = null)
    {
        header('HTTP/1.1 404 Not Found');
        if (!$body) $body = ['message' => 'Bad Request'];
        return json_encode($body);
    }

    public static function successResponse($body = null)
    {
        header('HTTP/1.1 200 OK');
        if (!$body) $body = "success";
        return json_encode($body);
    }
}
