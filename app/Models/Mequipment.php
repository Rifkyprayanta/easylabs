<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mequipment extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mequipment';  // Menyebutkan nama tabel

    protected $fillable = [
        'merk_alat','series_alat','nama_alat','jenis_koneksi_alat','type_host_alat'
    ];

    // Method lainnya jika perlu
}