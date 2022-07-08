<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Seller;
use App\User;
use App\OrderDetail;
use App\Order;
use DB;

class ReportController extends Controller
{
    public function stock_report(Request $request)
    {
        if($request->has('category_id')){
            $products = Product::where('category_id', $request->category_id)->get();
        }
        else{
            $products = Product::all();
        }
        return view('reports.stock_report', compact('products'));
    }

    public function in_house_sale_report(Request $request)
    {
        if($request->has('category_id')){
            $products = Product::where('category_id', $request->category_id)->orderBy('num_of_sale', 'desc')->get();
        }
        else{
            $products = Product::orderBy('num_of_sale', 'desc')->get();
        }
        return view('reports.in_house_sale_report', compact('products'));
    }

    public function seller_report(Request $request)
    {
        if($request->has('verification_status')){
            $sellers = Seller::where('verification_status', $request->verification_status)->get();
        }
        else{
            $sellers = Seller::all();
        }
        return view('reports.seller_report', compact('sellers'));
    }

    public function seller_sale_report(Request $request)
    {
        if($request->has('verification_status')){
            $sellers = Seller::where('verification_status', $request->verification_status)->get();
        }
        else{
            $sellers = Seller::all();
        }
        return view('reports.seller_sale_report', compact('sellers'));
    }

    public function wish_report(Request $request)
    {
        if($request->has('category_id')){
            $products = Product::where('category_id', $request->category_id)->get();
        }
        else{
            $products = Product::all();
        }
        return view('reports.wish_report', compact('products'));
    }
  	public function sellerEarningReport(Request $request)
    {
       //$order_report = //DB::table('order_details')
         //OrderDetail::leftJoin('sellers', 'order_details.seller_id', '=', 'sellers.id')
           
         ///->leftJoin('users', 'order_details.seller_id', '=', 'sellers.user_id')
           // ->select('order_details.*')
         //->select('sellers.*')
        // ->select('users.*')
         
         //->selectRaw('count(*) as total_order')
        //->selectRaw('SUM(price) as order_total_amount') 
           
        //->get()
      	//->toArray();
      //$order_report = OrderDetail::
      //where('delivery_status', '=', 'delivered')
    	// ->join('sellers', 'sellers.id', '=', 'order_details.seller_id')
       
        //->leftJoin('users', 'order_details.seller_id', '=', 'sellers.user_id')
       //->selectRaw('count(*) as total_order')
        //->select('order_details.*', 'sellers.*')
       // ->selectRaw('count(*) as total_order')
         //->select(DB::raw('count(*) as total_order'), DB::raw('SUM(price) as order_total_amount'),'order_details.*', 'sellers.*')
        //->with('seller')
        //->get()->groupBy('seller_id')->toArray();
      $orderss= OrderDetail::select(
                            "seller_id","order_id",
                            DB::raw("(sum(price)) as total_earning"))
                            ->selectRaw('count(*) as total_order')
                            ->where('delivery_status', '=', 'delivered')
        					->with('seller','order')
                            ->groupBy('seller_id')
                            ->get();
      
    $sort_search = null;
        $orders = Order::orderBy('code', 'desc')->with('orderDetails')->first();
   		
        if ($request->has('search')){
            $sort_search = $request->search;
            $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
        }
        $orders = $orders->simplePaginate(15);
        
      return view('reports.earning_report',compact('orders'));
    }
  public function sellerEarningReportParams()
  {
  }
}
