<?php

namespace Api\Handler;

class APIResponse
{
    public static function processResponseCommon($statusCode, $body)
    {
        switch ($statusCode) {
            case 200:
                return self::successResponse($body);
                break;
            case 400:
                return self::badRequest($body);
                break;
            case 401:
                return self::unauthorized($body);
                break;
            case 404:
                return self::notFoundResponse($body);
                break;
            case 409:
                return self::existed($body);
                break;
            case 422:
                return self::unprocessableEntityResponse($body);
                break;
            case 201:
                return self::created($body);
                break;
            default:
                header("HTTP/1.1 $statusCode");
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

    public static function unauthorized($body = null)
    {
        header('HTTP/1.1 401 Unauthorized');
        if (!$body) $body = ['message' => 'Unauthorized'];
        return json_encode($body);
    }

    public static function existed($body = null)
    {
        header('HTTP/1.1 409 Conflict');
        if (!$body) $body = ['message' => 'Conflict'];
        return json_encode($body);
    }

    public static function created($body = null)
    {
        header('HTTP/1.1 201 Created');
        if (!$body) $body = ['message' => 'Created'];
        return json_encode($body);
    }

    public static function forbidden($body = null)
    {
        header('HTTP/1.1 403 Forbidden');
        if (!$body) $body = ['message' => 'Forbidden'];
        return json_encode($body);
    }
}
