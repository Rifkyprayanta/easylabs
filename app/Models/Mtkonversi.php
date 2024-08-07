<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mtkonversi extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mtkonversi';  // Menyebutkan nama tabel

    protected $fillable = [
        'id_alat','id_test','jenis_konversi','hasil_raw','hasil_konversi','pembulatan','perkalian','nilai_pengali','pembagian','nilai_pembagian',
        'pengurangan','nilai_pengurangan','penjumlahan','nilai_penjumlahan'
    ];

    // Method lainnya jika perlu
}