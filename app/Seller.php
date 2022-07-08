<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seller extends Model
{
  public function user(){
  	return $this->belongsTo(User::class);
  }

  public function payments(){
  	return $this->hasMany(Payment::class);
  }

  public function userdetails(){
    return $this->hasOne(User::class,'id','user_id')->with('usershop');
}
}
