<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mtidtest extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mtid_test';  // Menyebutkan nama tabel

    protected $fillable = [
        'id_alat','id_test','id_mtd_pemeriksaan','metode_pemeriksaan','nama_test'
    ];

    // Method lainnya jika perlu
}