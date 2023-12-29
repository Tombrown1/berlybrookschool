<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Curriculum extends Model
{
    use HasFactory;
    protected $table = 'curriculum';
    public $timestamps = false;


    public function curriculum_cat()
    {
      return  $this->belongsTo(CurriculumCategory::class, 'curriculum_cat_id');
    }
}
