<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;

    protected $table = 'staffs';
    public $timestamps = false;

    public function staffCategory()
    {
        return $this->belongsTo(StaffCategory::class, 'staff_cat_id');
    }
}
