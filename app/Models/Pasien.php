<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Pasien extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mpasien';  // Menyebutkan nama tabel

    protected $fillable = [
        'id_pasien','nik', 'sim', 'nama','tempat_lahir','tanggal_lahir','usia','jenis_kelamin','agama',
        'tinggi_badan','pekerjaan','status_perkawinan','alamat_lengkapt','alamat_negara','alamat_provinsi',
        'berat_badan','tekanan_darah','alamat_kabupaten_kota','alamat_desa','status_warga_negara','golongan_darah'
    ];

    // Method lainnya jika perlu
}