<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pasien;
use App\Models\Mmetode_pembayaran;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\JsonResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class MmetodePembayaranController extends Controller
{
    public function index(): JsonResponse
    {
        $pasiens = Mmetode_pembayaran::all();
        return response()->json($pasiens, 200);
    }

    
}
