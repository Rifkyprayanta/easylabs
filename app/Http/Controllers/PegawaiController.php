<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pegawai;
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class PegawaiController extends Controller
{
    public function index(): JsonResponse
    {
        $pegawais = Pegawai::all();
        return response()->json($pegawais, 200);
    }

    public function login(Request $request): JsonResponse
    {
        // Ambil user berdasarkan NIP
        $user = Pegawai::where('nip_pegawai', $request->nip_pegawai)->first();

        if ($user && Hash::check($request->password, $user->password)) {
            // Password cocok, buat token
            $token = $user->createToken('MyApp')->plainTextToken;
            $success = [
                'token' => $token,
                'nama_pegawai' => $user->nama_pegawai
            ];
            return response()->json([
                'success' => true,
                'message' => 'Berhasil Login',
                'data'    => $user->nama_pegawai, 
                'token'   => $token
            ], 200);
        } else {
            // Password tidak cocok atau user tidak ditemukan
            return response()->json([
                'success' => false,
                'message' => 'Gagal Ambil Data',
            ], 401);
        }
    }

    public function logout(Request $request): JsonResponse
    {
        // Hapus token autentikasi saat ini
        $request->user()->currentAccessToken()->delete();
        
        return response()->json([
            'success' => true,
            'message' => 'Berhasil Logout',
        ], 200);
    }
}
