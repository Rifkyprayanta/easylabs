<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mspesimen extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'msatuan';  // Menyebutkan nama tabel

    protected $fillable = [
        'jenis_spesimen','nama_spesimen_display','nama_spesimen_klinis'
    ];

    // Method lainnya jika perlu
}