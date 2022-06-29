<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'departments';
    protected $fillable=['name'];

    public function users()
    {
        return $this->hasMany(User::class);
    }

    protected static function boot()
    {
        parent::boot();

        static::deleting(function($department) {
            $department->users()->delete();
        });
    }
}
