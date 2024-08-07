<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Pasien;
use App\Models\Mdiagnosa;
use App\Models\Mjenis;
use App\Models\Mlokasi;
use App\Models\Tindakan;
use App\Models\Pegawai;
use App\Models\Mmetode_pemeriksaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\JsonResponse;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class PasienController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): JsonResponse
    {
        $pasiens = Pasien::all();
        return response()->json($pasiens, 200);
    }

    public function parameterRegistrasiPasien(): JsonResponse
    {
        $dokter = Pegawai::where('jabatan','Dokter')->get();
        $diagnosa = Mdiagnosa::all();
        $rujukan = Mlokasi::all();
        $mjenis = Mjenis::all();
        $mmetode = Mmetode_pemeriksaan::all();
        return response()->json(['dokter' => $dokter, 'diagnosa' => $diagnosa,'rujukan'=>$rujukan,'mjenis'=>$mjenis,'m_pemeriksaan'=>$mmetode], 200);
    }

    public function dataSebelumRegistrasi(Request $request): JsonResponse {
        $nik = $request->input('nik'); // Mengambil nilai nik dari request
        $tindakan = []; // Inisialisasi $tindakan sebagai array kosong

        if ($nik) {
            // Jika nik tidak kosong, cari pasien berdasarkan nik
            $pasiens = Pasien::where('nik', $nik)->get();

            // Cek apakah $pasiens tidak kosong sebelum mengakses $pasiens[0]
            if ($pasiens->isNotEmpty()) {
                $tindakan = Tindakan::where('id_pasien', $pasiens[0]->id_pasien)->get();
            }
        } else {
            // Jika nik kosong, ambil semua nik pasien
            $pasiens = Pasien::pluck('nik');
        }

        return response()->json(['pasiens' => $pasiens, 'tindakan' => $tindakan], 200);
    }

    // cari pasien by range date dan atau nama 
    public function cariPasienByTgl(Request $request): JsonResponse
    {
        // Validasi input
        $request->validate([
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
            'name' => 'nullable|string', // Optional filter for name
        ]);

        // Ambil input tanggal dan nama dari request
        $startDate = $request->input('start_date') . ' 00:00:00';
        $endDate = $request->input('end_date') . ' 23:59:59';
        $name = $request->input('name');

        // Query untuk mencari pasien berdasarkan range tanggal
        $query = Pasien::whereBetween('created_at', [$startDate, $endDate]);

        if ($name) {
            // Filter nama jika parameter nama disediakan
            $query->where('nama', 'LIKE', "%$name%");
        }

        $pasiens = $query->get();


        // Mengembalikan hasil dalam bentuk JSON
        return response()->json([
            'status' => 'success',
            'data' => $pasiens,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function registrasiPasien(Request $request){
        
        // Validate the incoming request data
        $validator = Validator::make($request->all(), [
            'nik' => 'required|string|max:20',
            'sim' => 'required|string|max:20',
            'nama' => 'required|string|max:255',
            'tempat_lahir' => 'required|string|max:100',
            'tanggal_lahir' => 'required|date',
            'usia' => 'required|integer',
            'jenis_kelamin' => 'required|string|max:10',
            'agama' => 'required|string|max:50',
            'pekerjaan' => 'required|string|max:100',
            'status_perkawinan' => 'required|string|max:50',
            'alamat_lengkap' => 'required|string|max:255',
            'alamat_negara' => 'required|string|max:100',
            'alamat_provinsi' => 'required|string|max:100',
            'alamat_kabupaten_kota' => 'required|string|max:100',
            'alamat_desa' => 'required|string|max:100',
            'status_warga_negara' => 'required|string|max:50',
            'golongan_darah' => 'required|string|max:5',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        // Check if patient already exists
        $pasien = Pasien::where('nik', $request->nik)->first();

        if (!$pasien) {
            // Create a new patient record
            $pasien = Pasien::create([
                'nik' => $request->nik,
                'sim' => $request->sim,
                'nama' => $request->nama,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'usia' => $request->usia,
                'jenis_kelamin' => $request->jenis_kelamin,
                'agama' => $request->agama,
                'pekerjaan' => $request->pekerjaan,
                'status_perkawinan' => $request->status_perkawinan,
                'alamat_lengkap' => $request->alamat_lengkap,
                'alamat_negara' => $request->alamat_negara,
                'alamat_provinsi' => $request->alamat_provinsi,
                'alamat_kabupaten_kota' => $request->alamat_kabupaten_kota,
                'alamat_desa' => $request->alamat_desa,
                'status_warga_negara' => $request->status_warga_negara,
                'golongan_darah' => $request->golongan_darah
            ]);
        }

        // Insert the tindakan record
        $tindakan = Tindakan::create([
            'id_pasien' => $pasien->id
            // 'id_tindakan' => $request->id_tindakan,
            // 'nama_tindakan' => $request->nama_tindakan,
            // 'harga_tindakan' => $request->harga_tindakan,
            // 'id_pembayaran' => $request->id_pembayaran,
            // 'id_sub_lab' => $request->id_sub_lab,
            // 'nama_sub_lab' => $request->nama_sub_lab,
            // 'id_spesimen' => $request->id_spesimen,
            // 'jenis_spesimen' => $request->jenis_spesimen,
            // 'nama_spesimen_klinis' => $request->nama_spesimen_klinis,
            // 'flag_barcode' => $request->flag_barcode,
            // 'jenis_rujukan' => $request->jenis_rujukan,
            // 'sex_rujukan' => $request->sex_rujukan,
            // 'rentang_bwh_umur' => $request->rentang_bwh_umur,
            // 'rentang_atas_umur' => $request->rentang_atas_umur,
            // 'rentang_bwh_rujukan' => $request->rentang_bwh_rujukan,
            // 'rentang_atas_rujukan' => $request->rentang_atas_rujukan,
            // 'nilai_kualitatif' => $request->nilai_kualitatif,
            // 'flag_rujukan' => $request->flag_rujukan,
            // 'rentang_atas_krits_1' => $request->rentang_atas_krits_1,
            // 'rentang_atas_krits_2' => $request->rentang_atas_krits_2,
            // 'rentang_bwh_krits_1' => $request->rentang_bwh_krits_1,
            // 'rentang_bwh_krits_2' => $request->rentang_bwh_krits_2,
            // 'flag_krits' => $request->flag_krits,
            // 'tampil_desimal' => $request->tampil_desimal
        ]);

        return response()->json([
            'message' => 'Registrasi Pasien telah berhasil',
            'pasien' => $pasien,
            'tindakan' => $tindakan
        ], 201);
    }

    public function update(Request $request, string $id): JsonResponse
    {
        // Validate the incoming request data
        $validator = Validator::make($request->all(), [
            'nik' => 'required|string|max:20',
            'sim' => 'required|string|max:20',
            'nama' => 'required|string|max:255',
            'tempat_lahir' => 'required|string|max:100',
            'tanggal_lahir' => 'required|date',
            'usia' => 'required|integer',
            'jenis_kelamin' => 'required|string|max:10',
            'agama' => 'required|string|max:50',
            'pekerjaan' => 'required|string|max:100',
            'status_perkawinan' => 'required|string|max:50',
            'alamat_lengkap' => 'required|string|max:255',
            'alamat_negara' => 'required|string|max:100',
            'alamat_provinsi' => 'required|string|max:100',
            'alamat_kabupaten_kota' => 'required|string|max:100',
            'alamat_desa' => 'required|string|max:100',
            'status_warga_negara' => 'required|string|max:50',
            'golongan_darah' => 'required|string|max:5',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        try {
            $pasien = Pasien::findOrFail($id);

            // Update patient details
            $pasien->update([
                'nik' => $request->nik,
                'sim' => $request->sim,
                'nama' => $request->nama,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'usia' => $request->usia,
                'jenis_kelamin' => $request->jenis_kelamin,
                'agama' => $request->agama,
                'pekerjaan' => $request->pekerjaan,
                'status_perkawinan' => $request->status_perkawinan,
                'alamat_lengkap' => $request->alamat_lengkap,
                'alamat_negara' => $request->alamat_negara,
                'alamat_provinsi' => $request->alamat_provinsi,
                'alamat_kabupaten_kota' => $request->alamat_kabupaten_kota,
                'alamat_desa' => $request->alamat_desa,
                'status_warga_negara' => $request->status_warga_negara,
                'golongan_darah' => $request->golongan_darah
            ]);

            return response()->json([
                'message' => 'Pasien updated successfully',
                'pasien' => $pasien
            ], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'Pasien not found'], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id): JsonResponse
    {
        try {
            $pasien = Pasien::findOrFail($id);
            $pasien->delete();
            return response()->json(['message' => 'Pasien deleted successfully'], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'Pasien not found'], 404);
        }
    }
}
