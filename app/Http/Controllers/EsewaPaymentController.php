<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stripe;
use App\Order;
use App\OrderDetail;
use App\BusinessSetting;
use App\Seller;
use App\Checkout;
use Session;
use App\CustomerPackage;
use App\SellerPackage;
use App\Http\Controllers\CustomerPackageController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CommissionController;
use App\Http\Controllers\WalletController;

class EsewaPaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function esewa()
    {
      $order_id = Session::get('order_id');
    
      $ordercode = Order::where('id', $order_id)->first();
      
   
      return view('esewa',compact('ordercode'));
     
      
    }
  
    public function success(Request $request)
    {
     
  	$oid = $_GET['oid'];
    $amt = $_GET['amt'];
    $refId=$_GET['refId'];
       $order = Order::where('code',$oid)->first();
    
         if($amt == $order->grand_total ){
            $order_details = OrderDetail::where('order_id',$order->id)->update(['payment_status'=>'paid']);
            $order->payment_status = 'paid';
           $json =json_encode([
            'refid id' =>$refId,
               'order id' =>$oid,
               'amt' =>$amt,
            ]);
            $order->payment_details =$json;
          
        	$order->save();
           $payment=$json;

           
        $order = Order::findOrFail($order->id);
        $order->payment_status = 'paid';
        $order->payment_details = $payment;
        $order->save();

        if (\App\Addon::where('unique_identifier', 'affiliate_system')->first() != null && \App\Addon::where('unique_identifier', 'affiliate_system')->first()->activated) {
            $affiliateController = new AffiliateController;
            $affiliateController->processAffiliatePoints($order);
        }

        if (\App\Addon::where('unique_identifier', 'club_point')->first() != null && \App\Addon::where('unique_identifier', 'club_point')->first()->activated) {
            $clubpointController = new ClubPointController;
            $clubpointController->processClubPoints($order);
        }

        if(\App\Addon::where('unique_identifier', 'seller_subscription')->first() == null || !\App\Addon::where('unique_identifier', 'seller_subscription')->first()->activated){
            if (BusinessSetting::where('type', 'category_wise_commission')->first()->value != 1) {
                $commission_percentage = BusinessSetting::where('type', 'vendor_commission')->first()->value;
                foreach ($order->orderDetails as $key => $orderDetail) {
                    $orderDetail->payment_status = 'paid';
                    $orderDetail->save();
                    if($orderDetail->product->user->user_type == 'seller'){
                        $seller = $orderDetail->product->user->seller;
                        $seller->admin_to_pay = $seller->admin_to_pay + ($orderDetail->price*(100-$commission_percentage))/100 + $orderDetail->tax + $orderDetail->shipping_cost;
                        $seller->save();
                    }
                }
            }
            else{
                foreach ($order->orderDetails as $key => $orderDetail) {
                    $orderDetail->payment_status = 'paid';
                    $orderDetail->save();
                    if($orderDetail->product->user->user_type == 'seller'){
                        $commission_percentage = $orderDetail->product->category->commision_rate;
                        $seller = $orderDetail->product->user->seller;
                        $seller->admin_to_pay = $seller->admin_to_pay + ($orderDetail->price*(100-$commission_percentage))/100  + $orderDetail->tax + $orderDetail->shipping_cost;
                        $seller->save();
                    }
                }
            }
        }
        else {
            foreach ($order->orderDetails as $key => $orderDetail) {
                $orderDetail->payment_status = 'paid';
                $orderDetail->save();
                if($orderDetail->product->user->user_type == 'seller'){
                    $seller = $orderDetail->product->user->seller;
                    $seller->admin_to_pay = $seller->admin_to_pay + $orderDetail->price + $orderDetail->tax + $orderDetail->shipping_cost;
                    $seller->save();
                }
            }
        }

        $order->commission_calculated = 1;
        $order->save();

        Session::put('cart', collect([]));
        // Session::forget('order_id');
        Session::forget('payment_type');
        Session::forget('delivery_info');
        Session::forget('coupon_id');
        Session::forget('coupon_discount');

        flash(__('Payment completed'))->success();
 
        return redirect()->route('order_confirmed');
            
//  $checkoutController = new CheckoutController;
                               
//           $checkoutController->checkout_done($order->id, $json);




            }
      
    
  
      
    }
  
    public function fail()
    {
   
dd('fail');
      
     

     
      
    }



    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
     function stripePost(Request $request)
    {
        if($request->session()->has('payment_type')){
            if($request->session()->get('payment_type') == 'cart_payment'){
                $order = Order::findOrFail(Session::get('order_id'));

                Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

                $payment = json_encode(Stripe\Charge::create ([
                        "amount" => round(convert_to_usd($order->grand_total) * 100),
                        "currency" => "usd",
                        "source" => $request->stripeToken
                ]));

                $checkoutController = new CheckoutController;
                return $checkoutController->checkout_done($request->session()->get('order_id'), $payment);
            }
            elseif ($request->session()->get('payment_type') == 'wallet_payment') {
                Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

                $payment = json_encode(Stripe\Charge::create ([
                        "amount" => round(convert_to_usd($request->session()->get('payment_data')['amount']) * 100),
                        "currency" => "usd",
                        "source" => $request->stripeToken
                ]));

                $walletController = new WalletController;
                return $walletController->wallet_payment_done($request->session()->get('payment_data'), $payment);
            }
            elseif ($request->session()->get('payment_type') == 'customer_package_payment') {
                Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
                $customer_package = CustomerPackage::findOrFail(Session::get('payment_data')['customer_package_id']);

                $payment = json_encode(Stripe\Charge::create ([
                        "amount" => round(convert_to_usd($customer_package->amount) * 100),
                        "currency" => "usd",
                        "source" => $request->stripeToken
                ]));

                $customer_package_controller = new CustomerPackageController;
                return $customer_package_controller->purchase_payment_done($request->session()->get('payment_data'), $payment);
            }
            elseif ($request->session()->get('payment_type') == 'seller_package_payment') {
                Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
                $seller_package = SellerPackage::findOrFail(Session::get('payment_data')['seller_package_id']);

                $payment = json_encode(Stripe\Charge::create ([
                        "amount" => round(convert_to_usd($seller_package->amount) * 100),
                        "currency" => "usd",
                        "source" => $request->stripeToken
                ]));

                $seller_package_controller = new SellerPackageController;
                return $seller_package_controller->purchase_payment_done($request->session()->get('payment_data'), $payment);
            }
        }
    }
}
