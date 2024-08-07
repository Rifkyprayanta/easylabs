<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;


class Mtidtestmapp extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    
    protected $primaryKey = 'id';
    protected $table = 'mtid_test_mapp';  // Menyebutkan nama tabel

    protected $fillable = [
        'id_alat','id_test','id_tindakan','nama_test','nama_tindakan'
    ];

    // Method lainnya jika perlu
}