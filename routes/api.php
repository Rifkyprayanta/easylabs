<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Pegawai;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\API\RegisterController;
//use App\Http\Controllers\api\RegistrasiPasienController;
//use App\Http\Controllers\api\GenerateBarcodeController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('/test', function () {
    $pegawais = Pegawai::all();
    return response()->json(
        ['message' => 'Your request was successful',
        'data' => $pegawais,200]);
});

Route::middleware('auth:sanctum')->get('/pegawai', [PegawaiController::class, 'index']);
Route::post('/login', [PegawaiController::class, 'login']);
Route::post('/logout', [PegawaiController::class, 'logout']);
// regis pegawai di sini
// Route::controller(RegisterController::class)->group(function(){
//     Route::post('register', 'register');
//     Route::post('login', 'login');
//     Route::post('logout', 'logout');
// });

// Route::middleware('auth:sanctum')->controller(PasienController::class)->group(function() {
//     // mencari pasien bedasarkan tanggal
//     Route::post('/cariPasienByDate', 'cariPasienByTgl');
//     // edit
//     Route::put('/pasiens/{id}', 'update');
//     // mengecek nik sebelum regis
//     Route::post('/cekNik', 'dataSebelumRegistrasi');
//     // parameter registrasi
//     Route::get('/parameterRegis','parameterRegistrasiPasien');
// });

// Route::middleware('auth:sanctum')->get('/generate-barcode', [GenerateBarcodeController::class, 'generate']);

// Route::middleware('auth:sanctum')->controller(PasienController::class)->group(function() {
//     Route::post('/registrasiPasien', 'registrasiPasien');
// });

