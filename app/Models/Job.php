<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'user_id', 'logo', 'company', 'location', 'tag', 'email', 'website', 'description'];

    public function scopeFilter($query, array $filters)
    {
        if ($filters['tag'] ?? false)
        {
            $query->where('tag', 'like', '%' . request('tag') . '%');
        }

        if ($filters['search'] ?? false)
        {
            $query->where('title', 'like', '%' . request('search') . '%')
                ->orWhere('description', 'like', '%' . request('search') . '%')
                ->orWhere('tag', 'like', '%' . request('search') . '%')
                ->orWhere('company', 'like', '%' . request('search') . '%')
                ->orWhere('location', 'like', '%' . request('search') . '%');
        }
    }

    // Relationship With User 
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
