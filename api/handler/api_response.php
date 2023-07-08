<?php

namespace Api\Handler;

class APIResponse
{
    public static function processResponseCommon($statusCode, $body)
    {
        switch ($statusCode) {
            case 422:
                return self::unprocessableEntityResponse($body);
                break;
            case 404:
                return self::notFoundResponse($body);
                break;
            case 200:
                return self::successResponse($body);
                break;
            case 400:
                return self::badRequest($body);
                break;
            default:
                header($statusCode);
                return json_encode($body);
        }
    }

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

    public static function badRequest($body = null)
    {
        header('HTTP/1.1 400 Bad Request');
        if (!$body) $body = ['message' => 'Bad Request'];
        return json_encode($body);
    }
}
