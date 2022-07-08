<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class)->with('product','seller');
    }
  
  public function seller()
  {
    return $this->belongsTo(User::class,'seller_id');
  }

    public function refund_requests()
    {
        return $this->hasMany(RefundRequest::class,'order_id');
    }
	
    public function user()
    {
        return $this->belongsTo(User::class,'id');
    }
 public function customer()
    {
        return $this->hasOne(User::class,'id');
    }
    public function pickup_point()
    {
        return $this->belongsTo(PickupPoint::class);
    }
}
