<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Tindakan extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mttindakan';  // Menyebutkan nama tabel

    protected $fillable = [
        'id_pasien','nama_tindakan','harga_tindakan','id_pembayaran','id_sub_lab','nama_sub_lab','id_spesimen','jenis_spesimen','nama_spesimen_klinis','flag_barcode','jenis_rujukan',
        'sex_rujukan','rentang_bwh_umur','rentang_atas_umur','rentang_bwh_rujukan','rentang_atas_rujukan','nilai_kualitatif','flag_rujukan','rentang_atas_kritis_1','rentang_atas_kritis_2',
        'rentang_bwh_kritis_1','rentang_bwh_kritis_2','flag_kritis','tamppil_desimal'
    ];

    // Method lainnya jika perlu
}