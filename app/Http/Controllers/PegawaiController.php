<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pegawai;
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class PegawaiController extends BaseController
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
            return $this->sendResponse($success, 'User login successfully.');
        } else {
            // Password tidak cocok atau user tidak ditemukan
            return $this->sendError('Unauthorized.', ['error' => 'Unauthorized']);
        }
    }

    public function logout(Request $request): JsonResponse
    {
        // Hapus token autentikasi saat ini
        $request->user()->currentAccessToken()->delete();
        
        return $this->sendResponse([], 'User logged out successfully.');
    }
}
