<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller as Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    //
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    protected function sendResponse($result, $message)
    {
        return response()->json([
            'success' => true,
            'message' => $message,
            'data'    => $result
        ], 200);
    }

    protected function sendError($message, $error = [])
    {
        return response()->json([
            'success' => false,
            'message' => $message,
            'error'   => $error
        ], 401);
    }
}
