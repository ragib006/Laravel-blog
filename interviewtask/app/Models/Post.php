<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;



class Post extends Model
{

	 protected $fillable = ['post_title', 'post_image', 'post_description'];
    use HasFactory;
}
