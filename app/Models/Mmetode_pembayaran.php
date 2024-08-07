<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mmetode_pembayaran extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mmetode_pembayaran';  // Menyebutkan nama tabel

    protected $fillable = [
        'nama_met_pembayaran','nomor_met_pembayaran'
    ];

    // Method lainnya jika perlu
}