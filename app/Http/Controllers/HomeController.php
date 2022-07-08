<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Auth;
use Hash;
use App\Category;
use App\FlashDeal;
use App\Brand;
use App\SubCategory;
use App\SubSubCategory;
use App\Product;
use App\PickupPoint;
use App\CustomerPackage;
use App\CustomerProduct;
use App\User;
use App\Seller;
use App\Shop;
use App\Color;
use App\LoginContent;
use App\Order;
use App\Subscriber;
use App\BusinessSetting;
use App\Http\Controllers\SearchController;
use ImageOptimizer;
use Carbon\Carbon;
use DB;
use Cookie;
use App\FlashDealProduct;
use PDF;
use Mail;
use App\Mail\InvoiceEmailManager;
use CoreComponentRepository;

use Dompdf\Dompdf;
use Illuminate\Support\Facades\Storage;

class HomeController extends Controller
{
  
  
     public function suscribestore(Request $request)
    {
      dd($request);
        $subscriber = Subscriber::where('email', $request->email)->first();
        if($subscriber == null){
            $subscriber = new Subscriber;
            $subscriber->email = $request->email;
            $subscriber->save();
            flash(__('You have subscribed successfully'))->success();
        }
        else{
            flash(__('You are  already a subscriber'))->success();
        }
        return back();
    }
    public function login()
    {
      
      $login_content = LoginContent::where('published',1)->get();
      
        if(Auth::check()){
            return redirect()->route('home');
        }
        return view('frontend.user_login',compact('login_content'));
    }
 	   
     public function vendorFlashDeal(Request $request)
    {

        $search = null;
        $products = FlashDeal::where('created_by', Auth::user()->id)->orderBy('created_at', 'desc')->paginate(10);

        if ($request->has('search')) {
            $search = $request->search;
            $products = $products->where('name', 'like', '%' . $search . '%');
        }
        // $products = $products->paginate(10);
        return view('frontend.seller.flash.index', compact('products', 'search'));
    }


    public function vendorFlashDealcreate(Request $request)
    {
        $search = null;
        $products = Product::where('user_id', Auth::user()->id)->orderBy('created_at', 'desc');
        if ($request->has('search')) {
            $search = $request->search;
            $products = $products->where('name', 'like', '%' . $search . '%');
        }

        return view('frontend.seller.flash.create', compact('products', 'search'));
    }
    public function storeflash(Request $request)
    {

        $flash_deal = new FlashDeal;
        $flash_deal->title = $request->title;
        $flash_deal->created_by = Auth::user()->id;
        $flash_deal->text_color = $request->text_color;
        $flash_deal->start_date = strtotime($request->start_date);
        $flash_deal->end_date = strtotime($request->end_date);
        $flash_deal->background_color = $request->background_color;
        $flash_deal->slug = strtolower(str_replace(' ', '-', $request->title).'-'.str_random(5));
        if($request->hasFile('banner')){
            $flash_deal->banner = $request->file('banner')->store('uploads/offers/banner');
        }
        if($flash_deal->save()){
            foreach ($request->products as $key => $product) {
                $flash_deal_product = new FlashDealProduct;
                $flash_deal_product->flash_deal_id = $flash_deal->id;
                $flash_deal_product->product_id = $product;
                $flash_deal_product->discount = $request['discount_'.$product];
                $flash_deal_product->discount_type = $request['discount_type_'.$product];
                $flash_deal_product->save();
            }
            flash(__('Flash Deal has been inserted successfully Wait For Admin To Approve It'))->success();
            return redirect()->route('seller.FlashDealproduct');
        }
        else{
            flash(__('Something went wrong'))->error();
            return back();
        }
    }
    public function vendorFlashDealedit($id)
    {
        $flash_deal = FlashDeal::findOrFail(decrypt($id));
        return view('frontend.seller.flash.edit', compact('flash_deal'));
    }



  public function vendorFlashDealupdate(Request $request, $id)
    {

        $flash_deal = FlashDeal::findOrFail($id);
        $flash_deal->title = $request->title;
        $flash_deal->text_color = $request->text_color;
        $flash_deal->start_date = strtotime($request->start_date);
        $flash_deal->end_date = strtotime($request->end_date);
        $flash_deal->background_color = $request->background_color;
        if (($flash_deal->slug == null) || ($flash_deal->title != $request->title)) {
            $flash_deal->slug = strtolower(str_replace(' ', '-', $request->title) . '-' . str_random(5));
        }
        if($request->hasFile('banner')){
            $flash_deal->banner = $request->file('banner')->store('uploads/offers/banner');
        }
        foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product) {
            $flash_deal_product->delete();
        }
        if($flash_deal->save()){
            foreach ($request->products as $key => $product) {
                $flash_deal_product = new FlashDealProduct;
                $flash_deal_product->flash_deal_id = $flash_deal->id;
                $flash_deal_product->product_id = $product;
                $flash_deal_product->discount = $request['discount_'.$product];
                $flash_deal_product->discount_type = $request['discount_type_'.$product];
                $flash_deal_product->save();
            }
            flash(__('Flash Deal has been updated successfully'))->success();
            return redirect()->route('seller.FlashDealproduct');
        }
        else{
            flash(__('Something went wrong'))->error();
            return back();
        }
    }
    public function destroyflash($id)
    {
        $flash_deal = FlashDeal::findOrFail($id);
        foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product) {
            $flash_deal_product->delete();
        }
        if(FlashDeal::destroy($id)){
            flash(__('FlashDeal has been deleted successfully'))->success();
            return redirect()->route('flash_deals.index');
        }
        else{
            flash(__('Something went wrong'))->error();
            return back();
        }
    }

    public function update_status(Request $request)
    {
        $flash_deal = FlashDeal::findOrFail($request->id);
        $flash_deal->status = $request->status;
        if($flash_deal->save()){
            flash(__('Flash deal status updated successfully'))->success();
            return 1;
        }
        return 0;
    }

    public function update_featured(Request $request)
    {

        foreach (FlashDeal::all() as $key => $flash_deal) {
            $flash_deal->featured = 0;
            $flash_deal->save();
        }
        $flash_deal = FlashDeal::findOrFail($request->id);
        $flash_deal->featured = $request->featured;
        if($flash_deal->save()){
            flash(__('Flash deal status updated successfully'))->success();
            return 1;
        }
        return 0;
    }

    public function product_discount(Request $request){
        $product_ids = $request->product_ids;
        return view('partials.flash_deal_discount', compact('product_ids'));
    }

    public function product_discount_edit(Request $request){
        $product_ids = $request->product_ids;
        $flash_deal_id = $request->flash_deal_id;
        return view('partials.flash_deal_discount_edit', compact('product_ids', 'flash_deal_id'));
    }



    public function registration(Request $request)
    {
        if(Auth::check()){
            return redirect()->route('home');
        }
        if($request->has('referral_code')){
            Cookie::queue('referral_code', $request->referral_code, 43200);
        }
        return view('frontend.user_registration');
    }
  

    // public function user_login(Request $request)
    // {
    //     $user = User::whereIn('user_type', ['customer', 'seller'])->where('email', $request->email)->first();
    //     if($user != null){
    //         if(Hash::check($request->password, $user->password)){
    //             if($request->has('remember')){
    //                 auth()->login($user, true);
    //             }
    //             else{
    //                 auth()->login($user, false);
    //             }
    //             return redirect()->route('dashboard');
    //         }
    //     }
    //     return back();
    // }

    public function cart_login(Request $request)
    {
        $user = User::whereIn('user_type', ['customer', 'seller'])->where('email', $request->email)->first();
        if($user != null){
            updateCartSetup();
            if(Hash::check($request->password, $user->password)){
                if($request->has('remember')){
                    auth()->login($user, true);
                }
                else{
                    auth()->login($user, false);
                }
            }
        }
        return back();
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the admin dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_dashboard()
    {
       $admin_user_id = User::where('user_type', 'admin')->first()->id;
        $order = DB::table('orders')
                    ->orderBy('code', 'desc')
                    ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                    ->where('order_details.seller_id', $admin_user_id)
                    ->select('orders.id')
                    ->distinct();
      
  
        return view('dashboard',compact('order'));
    }
	public function sellersList()
    {
      $todays_date = Carbon::now()->format('Y.m.d');
      if(!(Auth::user()))
       {
        $shop = User::where('user_type','seller')->with('shop')->get();
      	return view('frontend.seller.sellers',compact('shop'));
        }
         else
         {
		$shop = User::where('user_type','seller')->with('shop')->get();
    	 $expire_date = Carbon::parse(Auth::user()->created_at)->addYear()->format('Y.m.d');
        return view('frontend.seller.sellers',compact('shop','expire_date','todays_date'));
         }
      
      
    }
    /**
     * Show the customer/seller dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function dashboard()
    {
        $myOrders = Order::where('user_id',auth()->id())->whereHas('orderDetails')->with('orderDetails.product')->limit(4)->latest()->get();
       
      $myOrderCount = Order::where('user_id',auth()->id())->whereHas('orderDetails')->with('orderDetails.product')->latest()->count();
        if(Auth::user()->user_type == 'seller'){
            return view('frontend.seller.dashboard',compact('myOrderCount','myOrders'));
        }
        elseif(Auth::user()->user_type == 'customer'){
            return view('frontend.customer.dashboard',compact('myOrderCount','myOrders'));
        }
        else {
            abort(404);
        }
    }
  
  public function nauloBazar()
  {
    $products = Product::where('added_by', 'admin')->where('published', 1)->paginate(24);
    return view('frontend.naulobazar',compact('products'));
  }
    public function profile(Request $request)
    {
      $today_date = Carbon::now()->format('Y.m.d');
     
     
        if(Auth::user()->user_type == 'customer'){
            return view('frontend.customer.profile');
        }
        elseif(Auth::user()->user_type == 'seller'){
          $expire_date = Carbon::parse(Auth::user()->created_at)->addYear()->format('Y.m.d');
            return view('frontend.seller.profile',compact('expire_date','today_date'));
        }
    }
	public function showOrder()
    {
      $myOrders = Order::where('user_id',auth()->id())->whereHas('orderDetails')->with('orderDetails.product')->get();
      return view('frontend.customer.order',compact('myOrders'));
    }
  public function showOrders()
    {
      $myOrders = Order::where('user_id',auth()->id())->whereHas('orderDetails')->with('orderDetails.product')->get();
      return view('frontend.seller.orders',compact('myOrders'));
    }
  public function showReturn()
  {
    return view('frontend.customer.return');
  }
  public function showCancel()
  {
    return view('frontend.customer.cancel');
  }
    public function customer_update_profile(Request $request)
    {
        $user = Auth::user();
        $user->name = $request->name;
        $user->address = $request->address;
        $user->country = $request->country;
        $user->city = $request->city;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;

        if($request->new_password != null){
          if(($request->new_password == $request->confirm_password)){
             $user->password = Hash::make($request->new_password);
          }else{
            flash(__('Passwords do not match.'))->error();
            return back();
        }
           
        }

        if($request->hasFile('photo')){
            $user->avatar_original = $request->photo->store('uploads/users');
        }

        if($user->save()){
            flash(__('Your Profile has been updated successfully!'))->success();
            return back();
        }

        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }


    public function seller_update_profile(Request $request)
    {
        $user = Auth::user();
        $user->name = $request->name;
        $user->address = $request->address;
        $user->country = $request->country;
        $user->city = $request->city;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;

        if($request->new_password != null && ($request->new_password == $request->confirm_password)){
            $user->password = Hash::make($request->new_password);
        }

        if($request->hasFile('photo')){
            $user->avatar_original = $request->photo->store('uploads');
        }

        $seller = $user->seller;
        $seller->cash_on_delivery_status = $request->cash_on_delivery_status;
        $seller->bank_payment_status = $request->bank_payment_status;
        $seller->bank_name = $request->bank_name;
        $seller->bank_acc_name = $request->bank_acc_name;
        $seller->bank_acc_no = $request->bank_acc_no;
        $seller->bank_routing_no = $request->bank_routing_no;

        if($user->save() && $seller->save()){
            flash(__('Your Profile has been updated successfully!'))->success();
            return back();
        }

        flash(__('Sorry! Something went wrong.'))->error();
        return back();
    }

    /**
     * Show the application frontend home.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      
       

      $allproducts= Product::orderBy('id','DESC')->where('current_stock','>',0)->with('stocks')->paginate(100);
      $recommended = Product::where('featured',1)->orderBy('id','DESC')->where('published',1)->with('user')->get();
      $bestSelling = Product::whereHas('orderDetails')
                            ->withCount('orderDetails')
                            ->with('user','reviews')
                            ->orderBy('order_details_count','desc')
                            ->limit(10)->get();
//   $flash_deal = \App\FlashDeal::where('status', 1)->where('featured', 1)->where('end_date','>',strtotime(now()))->where('start_date','>',strtotime(now()))->with('flash_deal_products')->first();

        $product=[];
      if(!empty($flash_deal)){
        foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
        {
            $product2 = \App\Product::where('id',$flash_deal_product->product_id)->first();
            $product2['discountflashdeal'] = ($flash_deal_product->discount);
            $product2['discountflashdealtype'] = ($flash_deal_product->discount_type);
            array_push($product,$product2);
    }
    }
      
       return view('frontend.index',compact('allproducts','recommended','bestSelling','product'));
    }

    public function flash_deal_details($slug)
    {
        $flash_deal = FlashDeal::where('slug', $slug)->first();
        if($flash_deal != null)
            return view('frontend.flash_deal_details', compact('flash_deal'));
        else {
            abort(404);
        }
    }

    public function load_featured_section(){
        return view('frontend.partials.featured_products_section');
    }

    public function load_best_selling_section(){
        return view('frontend.partials.best_selling_section');
    }

    public function load_home_categories_section(){
        return view('frontend.partials.home_categories_section');
    }

    public function load_best_sellers_section(){
      
        return view('frontend.partials.best_sellers_section');
    }

    public function trackOrder(Request $request)
    {
        if($request->has('order_code')){
          
            $order = Order::where('code', $request->order_code)->first();
         
            if($order != null){
                return view('frontend.track_order', compact('order'));
              
            }
           
        }
      
        return view('frontend.track_order');
    }

    public function product(Request $request, $slug)
    {
        $detailedProduct  = Product::where('slug', $slug)->first();
        if($detailedProduct!=null && $detailedProduct->published){
            updateCartSetup();
            if($request->has('product_referral_code')){
                Cookie::queue('product_referral_code', $request->product_referral_code, 43200);
                Cookie::queue('referred_product_id', $detailedProduct->id, 43200);
            }
            if($detailedProduct->digital == 1){
                return view('frontend.digital_product_details', compact('detailedProduct'));
            }
            else {
                // dd($detailedProduct);

                return view('frontend.product_details', compact('detailedProduct'));
            }
            // return view('frontend.product_details', compact('detailedProduct'));
        }
        abort(404);
    }

    public function shop(Request $request,$slug)
    {
     
      $sort_by = isset($_GET['sort_by'])?$_GET['sort_by']:'';
       $conditions = ['published' => 1];
		$products = Product::where($conditions);	
    //    if($sort_by){
    //         switch ($sort_by) {
    //             case '1':
    //                 $products->orderBy('created_at', 'desc');
                
    //                 break;
    //             case '2':
    //                 $products->orderBy('created_at', 'asc');
    //                 break;
    //             case '3':
    //                 $products->orderBy('unit_price', 'asc');
    //                 break;
    //             case '4':
                
    //                 $products->orderBy('unit_price', 'desc');
    //                 break;
    //             default:
    //                 break;
    //         }
    //     }
      
       $non_paginate_products = filter_products($products)->get();
      
        $shop  = Shop::where('slug', $slug)->first();
        if($shop!=null){
            $seller = Seller::where('user_id', $shop->user_id)->first();
			
            if ($seller->verification_status != 0){

                return view('frontend.seller_shop', compact('shop','sort_by'));
            }
            else{

                return view('frontend.seller_shop_without_verification', compact('shop', 'seller'));
            }
        }
        abort(404);
    }

    public function filter_shop($slug, $type)
    {
        $shop  = Shop::where('slug', $slug)->first();
        if($shop!=null && $type != null){
            return view('frontend.seller_shop', compact('shop', 'type'));
        }
        abort(404);
    }

    public function listing(Request $request)
    {
        // $products = filter_products(Product::orderBy('created_at', 'desc'))->paginate(12);
        // return view('frontend.product_listing', compact('products'));
        return $this->search($request);
    }

    public function all_categories(Request $request)
    {
        $categories = Category::all();
        return view('frontend.all_category', compact('categories'));
    }
    public function all_brands(Request $request)
    {
        $categories = Category::all();
        return view('frontend.all_brand', compact('categories'));
    }

    public function show_product_upload_form(Request $request)
    {
        if(\App\Addon::where('unique_identifier', 'seller_subscription')->first() != null && \App\Addon::where('unique_identifier', 'seller_subscription')->first()->activated){
            if(Auth::user()->seller->remaining_uploads > 0){
                $categories = Category::all();
                return view('frontend.seller.product_upload', compact('categories'));
            }
            else {
                flash('Upload limit has been reached. Please upgrade your package.')->warning();
                return back();
            }
        }
        $categories = Category::all();
        return view('frontend.seller.product_upload', compact('categories'));
    }

    public function show_product_edit_form(Request $request, $id)
    {
        $categories = Category::all();
        $product = Product::find(decrypt($id));
        return view('frontend.seller.product_edit', compact('categories', 'product'));
    }

    public function seller_product_list(Request $request)
    {
        $search = null;
        $products = Product::where('user_id', Auth::user()->id)->orderBy('created_at', 'desc');
        if ($request->has('search')) {
            $search = $request->search;
            $products = $products->where('name', 'like', '%'.$search.'%');
        }
        $products = $products->paginate(10);
        return view('frontend.seller.products', compact('products', 'search'));
    }
    public function account(){
    //  $order = Order::first();	
     //  $array['view'] = 'emails.invoice';
    //  $array['subject'] = 'Order Placed - ' . $order->code;
     // $array['from'] = \Config::get('mail.username');
     // $array['content'] = 'Hello. A new order has been placed. Please check the attached invoice.';
  
 
     //   $pdf = PDF::loadView('invoices.customer_invoice', compact('order'));
      
   //    Mail::send('invoices.customer_invoice', $array, function($message)use($array,$pdf) {
    //        $message->to('joshibipin2052@gmail.com', 'asdf')
    //        ->subject($array["subject"])
     //       ->attachData($pdf->output(), "invoice.pdf");
      //      });
      return view('frontend.mobile-account');
    }
      public function flashale()
    {
  
        $flash_deals_seting= FlashDeal::where('status', 1)->first();
       $flash_deals = \App\FlashDeal::where([
                                    ['status', 1],
                                    ['featured', 1],
                                    ['start_date','<=',strtotime(now())],
                                    ['end_date','>=',strtotime(now())],
                        ]);
//dd($flash_deals_seting);
       
        return view('frontend.flashview',compact('flash_deals_seting','flash_deals'));
    }

    public function ajax_search(Request $request)
    {
        $keywords = array();
        $products = Product::where('published', 1)->where('tags', 'like', '%'.$request->search.'%')->get();
        foreach ($products as $key => $product) {
            foreach (explode(',',$product->tags) as $key => $tag) {
                if(stripos($tag, $request->search) !== false){
                    if(sizeof($keywords) > 5){
                        break;
                    }
                    else{
                        if(!in_array(strtolower($tag), $keywords)){
                            array_push($keywords, strtolower($tag));
                        }
                    }
                }
            }
        }

        $products = filter_products(Product::where('published', 1)->where('name', 'like', '%'.$request->search.'%'))->get()->take(3);

        $subsubcategories = SubSubCategory::where('name', 'like', '%'.$request->search.'%')->get()->take(3);

        $shops = Shop::whereIn('user_id', verified_sellers_id())->where('name', 'like', '%'.$request->search.'%')->get()->take(3);

        if(sizeof($keywords)>0 || sizeof($subsubcategories)>0 || sizeof($products)>0 || sizeof($shops) >0){
            return view('frontend.partials.search_content', compact('products', 'subsubcategories', 'keywords', 'shops'));
        }
        return '0';
    }

    public function search(Request $request)
    {
        $query = $request->q;
        $brand_id = (Brand::where('slug', $request->brand)->first() != null) ? Brand::where('slug', $request->brand)->first()->id : null;
        $sort_by = $request->sort_by;
        $category_id = (Category::where('slug', $request->category)->first() != null) ? Category::where('slug', $request->category)->first()->id : null;
        $subcategory_id = (SubCategory::where('slug', $request->subcategory)->first() != null) ? SubCategory::where('slug', $request->subcategory)->first()->id : null;
        $subsubcategory_id = (SubSubCategory::where('slug', $request->subsubcategory)->first() != null) ? SubSubCategory::where('slug', $request->subsubcategory)->first()->id : null;
        $min_price = $request->min_price;
        $max_price = $request->max_price;
        $seller_id = $request->seller_id;

        $conditions = ['published' => 1];

        if($brand_id != null){
            $conditions = array_merge($conditions, ['brand_id' => $brand_id]);
        }
        if($category_id != null){
            $conditions = array_merge($conditions, ['category_id' => $category_id]);
        }
        if($subcategory_id != null){
            $conditions = array_merge($conditions, ['subcategory_id' => $subcategory_id]);
        }
        if($subsubcategory_id != null){
            $conditions = array_merge($conditions, ['subsubcategory_id' => $subsubcategory_id]);
        }
        if($seller_id != null){
            $conditions = array_merge($conditions, ['user_id' => Seller::findOrFail($seller_id)->user->id]);
          
        }

        $products = Product::where($conditions);	
	
        if($min_price != null && $max_price != null){
            $products = $products->where('unit_price', '>=', $min_price)->where('unit_price', '<=', $max_price);
        }

        if($query != null){
            $searchController = new SearchController;
            $searchController->store($request);
            $products = $products->where('name', 'like', '%'.$query.'%')->orWhere('tags', 'like', '%'.$query.'%');
        }

        if($sort_by != null){
            switch ($sort_by) {
                case '1':
                    $products->orderBy('created_at', 'desc');
                    break;
                case '2':
                    $products->orderBy('created_at', 'asc');
                    break;
                case '3':
                    $products->orderBy('unit_price', 'asc');
                    break;
                case '4':
                    $products->orderBy('unit_price', 'desc');
                    break;
                default:
                    // code...
                    break;
            }
        }


        $non_paginate_products = filter_products($products)->get();

        //Attribute Filter

        $attributes = array();
        foreach ($non_paginate_products as $key => $product) {
            if($product->attributes != null && is_array(json_decode($product->attributes))){
                foreach (json_decode($product->attributes) as $key => $value) {
                    $flag = false;
                    $pos = 0;
                    foreach ($attributes as $key => $attribute) {
                        if($attribute['id'] == $value){
                            $flag = true;
                            $pos = $key;
                            break;
                        }
                    }
                    if(!$flag){
                        $item['id'] = $value;
                        $item['values'] = array();
                        foreach (json_decode($product->choice_options) as $key => $choice_option) {
                            if($choice_option->attribute_id == $value){
                                $item['values'] = $choice_option->values;
                                break;
                            }
                        }
                        array_push($attributes, $item);
                    }
                    else {
                        foreach (json_decode($product->choice_options) as $key => $choice_option) {
                            if($choice_option->attribute_id == $value){
                                foreach ($choice_option->values as $key => $value) {
                                    if(!in_array($value, $attributes[$pos]['values'])){
                                        array_push($attributes[$pos]['values'], $value);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        $selected_attributes = array();

        foreach ($attributes as $key => $attribute) {
            if($request->has('attribute_'.$attribute['id'])){
                foreach ($request['attribute_'.$attribute['id']] as $key => $value) {
                    $str = '"'.$value.'"';
                    $products = $products->where('choice_options', 'like', '%'.$str.'%');
                }

                $item['id'] = $attribute['id'];
                $item['values'] = $request['attribute_'.$attribute['id']];
                array_push($selected_attributes, $item);
            }
        }


        //Color Filter
        $all_colors = array();

        foreach ($non_paginate_products as $key => $product) {
            if ($product->colors != null) {
                foreach (json_decode($product->colors) as $key => $color) {
                    if(!in_array($color, $all_colors)){
                        array_push($all_colors, $color);
                    }
                }
            }
        }

        $selected_color = null;

        if($request->has('color')){
            $str = '"'.$request->color.'"';
            $products = $products->where('colors', 'like', '%'.$str.'%');
            $selected_color = $request->color;
        }
		$productCount = $products->count();
        $products = filter_products($products)->paginate(12)->appends(request()->query());

        return view('frontend.product_listing', compact('products', 'query', 'category_id', 'subcategory_id', 'subsubcategory_id', 'brand_id', 'sort_by', 'seller_id','min_price', 'max_price', 'attributes', 'selected_attributes', 'all_colors', 'selected_color','productCount'));
    }

    public function product_content(Request $request){
        $connector  = $request->connector;
        $selector   = $request->selector;
        $select     = $request->select;
        $type       = $request->type;
        productDescCache($connector,$selector,$select,$type);
    }

    public function home_settings(Request $request)
    {
        return view('home_settings.index');
    }

    public function top_10_settings(Request $request)
    {
        foreach (Category::all() as $key => $category) {
            if(in_array($category->id, $request->top_categories)){
                $category->top = 1;
                $category->save();
            }
            else{
                $category->top = 0;
                $category->save();
            }
        }

        foreach (Brand::all() as $key => $brand) {
            if(in_array($brand->id, $request->top_brands)){
                $brand->top = 1;
                $brand->save();
            }
            else{
                $brand->top = 0;
                $brand->save();
            }
        }

        flash(__('Top 10 categories and brands have been updated successfully'))->success();
        return redirect()->route('home_settings.index');
    }

    public function variant_price(Request $request)
    {
           $product = Product::find($request->id);
        $str = '';
        $quantity = 0;

        if ($request->has('color')) {
            $data['color'] = $request['color'];
            $str = Color::where('code', $request['color'])->first()->name;
        }

        if (json_decode(Product::find($request->id)->choice_options) != null) {
            foreach (json_decode(Product::find($request->id)->choice_options) as $key => $choice) {
                if ($str != null) {
                    $str .= '-' . str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                } else {
                    $str .= str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                }
            }
        }


        if ($str != null && $product->variant_product) {
            $product_stock = $product->stocks->where('variant', $str)->first();
            $price = $product_stock->price;
            $quantity = $product_stock->qty;
        } else {
            $price = $product->unit_price;
            $quantity = $product->current_stock;
        }

        //discount calculation
        $flash_deals = \App\FlashDeal::where('status', 1)->get();
        $inFlashDeal = false;
        foreach ($flash_deals as $key => $flash_deal) {
            if ($flash_deal != null && $flash_deal->status == 1 && strtotime(date('d-m-Y')) >= $flash_deal->start_date && strtotime(date('d-m-Y')) <= $flash_deal->end_date && \App\FlashDealProduct::where('flash_deal_id', $flash_deal->id)->where('product_id', $product->id)->first() != null) {
                $flash_deal_product = \App\FlashDealProduct::where('flash_deal_id', $flash_deal->id)->where('product_id', $product->id)->first();
                if ($flash_deal_product->discount_type == 'percent') {
                    $price -= ($price * $flash_deal_product->discount) / 100;
                } elseif ($flash_deal_product->discount_type == 'amount') {
                    $price -= $flash_deal_product->discount;
                }
                $inFlashDeal = true;
                break;
            }
        }
        if (!$inFlashDeal) {
            if ($product->discount_type == 'percent') {
                $price -= ($price * $product->discount) / 100;
            } elseif ($product->discount_type == 'amount') {
                $price -= $product->discount;
            }
        }

        if ($product->tax_type == 'percent') {
            $price += ($price * $product->tax) / 100;
        } elseif ($product->tax_type == 'amount') {
            $price += $product->tax;
        }
        return array('price' => single_price($price * $request->quantity), 'quantity' => $quantity, 'digital' => $product->digital);
    }

    public function sellerpolicy(){
        return view("frontend.policies.sellerpolicy");
    }

    public function returnpolicy(){
        return view("frontend.policies.returnpolicy");
    }

    public function supportpolicy(){
        return view("frontend.policies.supportpolicy");
    }

    public function terms(){
        return view("frontend.policies.terms");
    }

    public function privacypolicy(){
        return view("frontend.policies.privacypolicy");
    }

    public function get_pick_ip_points(Request $request)
    {
        $pick_up_points = PickupPoint::all();
        return view('frontend.partials.pick_up_points', compact('pick_up_points'));
    }

    public function get_category_items(Request $request){
        $category = Category::findOrFail($request->id);
        return view('frontend.partials.category_elements', compact('category'));
    }

    public function premium_package_index()
    {
        $customer_packages = CustomerPackage::all();
        return view('frontend.customer_packages_lists', compact('customer_packages'));
    }

    public function seller_digital_product_list(Request $request)
    {
        $products = Product::where('user_id', Auth::user()->id)->where('digital', 1)->orderBy('created_at', 'desc')->paginate(10);
        return view('frontend.seller.digitalproducts.products', compact('products'));
    }
    public function show_digital_product_upload_form(Request $request)
    {
        if(\App\Addon::where('unique_identifier', 'seller_subscription')->first() != null && \App\Addon::where('unique_identifier', 'seller_subscription')->first()->activated){
            if(Auth::user()->seller->remaining_digital_uploads > 0){
                $business_settings = BusinessSetting::where('type', 'digital_product_upload')->first();
                $categories = Category::where('digital', 1)->get();
                return view('frontend.seller.digitalproducts.product_upload', compact('categories'));
            }
            else {
                flash('Upload limit has been reached. Please upgrade your package.')->warning();
                return back();
            }
        }

        $business_settings = BusinessSetting::where('type', 'digital_product_upload')->first();
        $categories = Category::where('digital', 1)->get();
        return view('frontend.seller.digitalproducts.product_upload', compact('categories'));
    }

    public function show_digital_product_edit_form(Request $request, $id)
    {
        $categories = Category::where('digital', 1)->get();
        $product = Product::find(decrypt($id));
        return view('frontend.seller.digitalproducts.product_edit', compact('categories', 'product'));
    }
}
