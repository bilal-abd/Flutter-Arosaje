<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plante extends Model
{
    use HasFactory;
    protected $table = 'plante';
    protected $fillable = [
        'nom_plante',
        'description',
        'localisation',
        'image',
        'user_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function conseils()
    {
        return $this->hasMany(Conseil::class);
    }
}
