<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mtqc_pabrikan extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mtqc_pabrikan';  // Menyebutkan nama tabel

    protected $fillable = [
        'id_alat','id_test','tgl_awal_buka_ed','tgl_akhir_buka_ed','nama_lot','level_lot','bts_bawah','bts_atas','mean','bts_tea','bts_cv','bts_d'
    ];

    // Method lainnya jika perlu
}