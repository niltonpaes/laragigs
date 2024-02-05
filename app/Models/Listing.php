<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{
    use HasFactory;

    // if not using Model::unguard(); on AppServiceProvider
    // protected $fillable= ['title', 'company', 'location', 'website', 'email', 'description', 'tags'];


    // CUSTOM - FILTER
    public function scopeFilter($query, array $filters)
    {
        if($filters['tag'] ?? false){
            $query->where('tags', 'like', '%' . $filters['tag'] . '%' );
        }

        if($filters['search'] ?? false){
            $query
            ->where('title', 'like', '%' . $filters['search'] . '%' )
            ->orWhere('description', 'like', '%' . $filters['search'] . '%' )
            ->orWhere('tags', 'like', '%' . $filters['search'] . '%' );
        }
    }

    
    // CUSTOM - relationship to user
    public function user() {
        return $this->belongsTo(User::class, 'user_id');
    }
}
