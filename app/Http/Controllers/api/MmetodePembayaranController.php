<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pasien;
use App\Models\Tindakan;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\JsonResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class MmetodePembayaranController extends Controller
{
    public function index(): JsonResponse
    {
        $pasiens = Tindakan::all();
        return response()->json($pasiens, 200);
    }

    // cari pembayaran by range date dan atau nama pasien
    public function cariPembayaranByTgl(Request $request): JsonResponse
    {
        // Validasi input
        $request->validate([
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
            'name' => 'nullable|string', // Optional filter for name
        ]);

        // get id pasien by name returning id 
        $pasien = Pasien::where('nama', $request->name)->get();

        // Ambil input tanggal dan nama dari request
        $startDate = $request->input('start_date') . ' 00:00:00';
        $endDate = $request->input('end_date') . ' 23:59:59';
        $pasien = $pasien[0]->id;

        // Query untuk mencari pasien berdasarkan range tanggal
        $query = Tindakan::whereBetween('created_at', [$startDate, $endDate]);

        if ($pasien) {
            // get id pasien by id after sort by range date 
            $query->where('id_pasien', $pasien);
        }

        $pasiens = $query->get();

        // Mengembalikan hasil dalam bentuk JSON
        return response()->json([
            'status' => 'success',
            'data' => $pasiens,
        ]);
    }

    
}
