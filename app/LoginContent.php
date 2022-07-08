<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoginContent extends Model
{
    protected $table = 'login_content';
  
  	protected $fillable = ['photo','url','header','head','subheader','body','position','published'];
}
