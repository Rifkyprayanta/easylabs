<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pegawai;
use Illuminate\Http\JsonResponse;

class PegawaiController extends Controller
{
    public function index(): JsonResponse
    {
        $pegawais = Pegawai::all();
        return response()->json($pegawais, 200);
    }
}
