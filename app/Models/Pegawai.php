<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Pegawai extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id_pegawai';
    protected $table = 'mpegawai';  // Menyebutkan nama tabel

    protected $fillable = [
        'nip_pegawai', 'password', 'nama_pegawai'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];
    
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // Method lainnya jika perlu
}