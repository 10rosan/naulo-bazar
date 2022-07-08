@extends('frontend.layouts.app')
@section('meta_title'){{ $shop->meta_title }}@stop
@section('meta_description'){{ $shop->meta_description }}@stop
@section('meta')
<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="{{ $shop->meta_title }}">
<meta itemprop="description" content="{{ $shop->meta_description }}">
<meta itemprop="image" content="{{ asset($shop->logo) }}">
<!-- Twitter Card data -->
<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@publisher_handle">
<meta name="twitter:title" content="{{ $shop->meta_title }}">
<meta name="twitter:description" content="{{ $shop->meta_description }}">
<meta name="twitter:creator" content="@author_handle">
<meta name="twitter:image" content="{{ asset($shop->meta_img) }}">
<!-- Open Graph data -->
<meta property="og:title" content="{{ $shop->meta_title }}" />
<meta property="og:type" content="Shop" />
<meta property="og:url" content="{{ route('shop.visit', $shop->slug) }}" />
<meta property="og:image" content="{{ asset($shop->logo) }}" />
<meta property="og:description" content="{{ $shop->meta_description }}" />
<meta property="og:site_name" content="{{ $shop->name }}" />
@endsection
@section('content')
<!-- <section>
   <img loading="lazy"  src="https://via.placeholder.com/2000x300.jpg" alt="" class="img-fluid">
   </section> -->
@php
$total = 0;
$rating = 0;
foreach ($shop->user->products as $key => $seller_product) {
$total += $seller_product->reviews->count();
$rating += $seller_product->reviews->sum('rating');
}
@endphp
<main class="no-main">
   <div class="ps-breadcrumb">
      <div class="container">
         <ul class="ps-breadcrumb__list">
            <li class="active"><a href="index.html">Home</a></li>
            <li class="active"><a href="vendor-list.html">Store List</a></li>
            <li><a href="javascript:void(0);">{{ $shop->name }}</a></li>
         </ul>
      </div>
   </div>
   <section class="section--vendorStore">
      <div class="container">
         <div class="row">
            <div class="col-12 col-lg-3">
               <div class="widget--block">
                  <h5 class="widget__title">ALL CATEGORIES</h5>
                  <ul class="menu--mobile widget__list">
                     @foreach (\App\Category::all()->take(11) as $key => $category)
                     @php
                     $brands = array();
                     @endphp
                     <li class="menu-item-has-children category-item">
                        <a href="{{ route('products.category', $category->slug) }}">{{ __($category->name) }}</a><span class="sub-toggle"><i class="icon-chevron-down"></i></span>
                        <ul class="sub-menu">
                           @foreach ($category->subCategories as $subcat )
                           <li>
                              <a href="{{route('products.category',$subcat->slug)}}"> {{$subcat->name}}</a>
                           </li>
                           @endforeach
                        </ul>
                     </li>
                     @endforeach
                  </ul>
               </div>
               <div class="store__location">
                  <h5 class="widget__title">STORE LOCATIONS</h5>
                  <iframe src="https://maps.google.com/maps?q=One%20Store%20One%20Store%20Boudhanath%20Sadak,%20Kathmandu%2044600&t=&z=15&ie=UTF8&iwloc=&output=embed" width="600" height="450" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
               </div>
               @guest
               <div class="contact__vendor">
                  <h5 class="widget__title">Login to Send Text To {{ $shop->name }} </h5>
               </div>
               @endguest
               @auth
               <div class="contact__vendor">
                  <h5 class="widget__title">CONTACT VENDOR</h5>
                  <form class=""   action="{{ route('conversations.store') }}" method="POST" enctype="multipart/form-data">
                     @csrf
                     <input type="hidden" name="product_id" value="0">
                     <div class="form-row">
                        {{-- 
                        <div class="col-12 form-group--block">
                           <input class="form-control" type="text"  placeholder="Your Name">
                        </div>
                        --}}
                        <div class="col-12 form-group--block">
                           <input class="form-control" type="text" name="title" placeholder="{{ Auth::user()->email }}" value="{{ Auth::user()->email }}" readonly required>
                        </div>
                        <div class="col-12 form-group--block">
                           <textarea class="form-control" name="message" required placeholder="Your Question" required></textarea>
                        </div>
                        <div class="col-12 form-group--block">
                           <button class="btn ps-button">Send Message</button>
                        </div>
                     </div>
                  </form>
               </div>
               @endauth
            </div>
            <div class="col-12 col-lg-9">
               <div class="store__header">
                  <div class="row m-0">
                     <div class="col-12 col-lg-4 p-0">
                        <div class="store__avatar">
                           @if ($shop->logo)
                           @if (file_exists($shop->logo))
                           <img src="{{ asset($shop->logo) }}"
                              data-src="@if ($shop->logo !== null) {{ asset($shop->logo) }} @else {{ asset($shop->logo) }} @endif"
                              alt="{{ $shop->name }}">
                           @else                                
                           <img style="" src="{{asset('shop/logo/naulo.jpg')}}" alt="{{$shop->name}}"> 
                           @endif
                           @else                                
                           <img style="" src="{{asset('shop/logo/naulo.jpg')}}" alt="{{$shop->name}}">                                             
                           @endif
                        </div>
                     </div>
                     <div class="col-12 col-lg-8 p-0">
                        <div class="store__detail">
                           <h3 class="store__name">{{ $shop->name }}</h3>
                           <p class="store__address">{{ $shop->address }}</p>
                           <p class="store__phone">{{ $shop->user->phone }}</p>
                           @if ($shop->user->seller->verification_status == 1)
                           <span class="ml-2"><i class="fa fa-check-circle" style="color:green"></i></span>
                           @else
                           <span class="ml-2"><i class="fa fa-times-circle" style="color:red"></i></span>
                           @endif
                           {{-- 
                           <p class="store__email"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="7b081a16080e151c241c1a0f131e093b1c161a121755181416">[email&#160;protected]</a></p>
                           --}}
                           <div class="store__rating">
                              {{-- 
                              <select class="rating-stars">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4" selected="selected">4</option>
                                 <option value="5">5</option>
                              </select>
                              <span>(43 ratings)</span> --}}
                           </div>
                           <div class="store__social">
                              @if ($shop->facebook != null)
                              <a class="icon_social facebook" href="{{asset($shop->facebook)}}"><i class="fa fa-facebook-f"></i></a>
                              @endif
                              @if ($shop->twitter != null)
                              <a class="icon_social twitter" href="{{asset($shop->twitter)}}"><i class="fa fa-twitter"></i></a>
                              @endif
                              @if ($shop->google != null)
                              <a class="icon_social google" href="{{asset($shop->google)}}"><i class="fa fa-google-plus"></i></a>
                              @endif
                              @if ($shop->youtube != null)
                              <a class="icon_social youtube" href="{{asset($shop->youtube)}}"><i class="fa fa-youtube"></i></a>
                              @endif
                              {{-- <a class="icon_social wifi" href="#"><i class="fa fa-wifi"></i></a>
                              --}}
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="store__perpage">
                  <p class="result"> <span></span>Products Of {{ $shop->name }} </p>
                  {{-- 
                  <p class="text-right">page
                     <input type="text" value="1">of 3
                  </p>
                  --}}
               </div>
               <div class="viewtype--block">
                  <div class="viewtype__sortby">
                     <div class="select">
                        <form id="search-form">
                           <select class="single-select2" name="sort_by" onchange="filter()">
                           <option value="1" @isset($sort_by) @if ($sort_by == '1') selected @endif @endisset>
                           {{ __('Newest') }}</option>
                           <option value="2" @isset($sort_by) @if ($sort_by == '2') selected @endif @endisset>
                           {{ __('Oldest') }}</option>
                           <option value="3" @isset($sort_by) @if ($sort_by == '3') selected @endif @endisset>
                           {{ __('Price low to high') }}</option>
                           <option value="4" @isset($sort_by) @if ($sort_by == '4') selected @endif @endisset>
                           {{ __('Price high to low') }}</option>
                           </select>
                        </form>
                     </div>
                  </div>
                  <div class="viewtype__select">
                     <span class="text">View: </span>
                     <div class="select">
                        <select class="single-select2" name="state">
                           <option value="25">20 per page</option>
                           <option value="12">12 per page</option>
                           <option value="5">5 per page</option>
                        </select>
                     </div>
                     <div class="type">
                        <span class="active"><i class="icon-icons"></i></span>
                        <!-- <span><i class="icon-icons2"></i></span> -->
                        <span><i class="icon-list4"></i></span>
                     </div>
                  </div>
               </div>
              <style>
                .ps-product--standard:hover{
                  position: absolute;
                 }
              </style>
               <div class="store__product">
                  <div class="row m-0">
                     @php
                     if(isset($sort_by) && $sort_by != ''){
                     if($sort_by == 1) {
                     $products = \App\Product::where('user_id', $shop->user->id)->where('published', '1')->orderBy('created_at', 'desc')->paginate(24);
                     }elseif($sort_by == 2){
                     $products = \App\Product::where('user_id', $shop->user->id)->where('published', '1')->orderBy('created_at', 'asc')->paginate(24);
                     }elseif($sort_by == 3){
                     $products = \App\Product::where('user_id', $shop->user->id)->where('published', '1')->orderBy('unit_price', 'asc')->paginate(24);
                     }elseif($sort_by == 4){
                     $products = \App\Product::where('user_id', $shop->user->id)->where('published', '1')->orderBy('unit_price', 'desc')->paginate(24);
                     }
                     }else{
                     $products = \App\Product::where('user_id', $shop->user->id)->where('published', '1')->paginate(24);
                     }
                     @endphp
                     @foreach ($products as $key => $product)
                     @php
                     if($product->variant_product == 1){
                     $product_stock = \App\ProductStock::where('product_id', $product->id)->get()->sum('qty');
                     }
                     @endphp
                     <div class="col-6 col-md-4 col-lg-3 p-0">
                        <div class="ps-product--standard">
                           <a href="{{ route('product', $product->slug) }}">
                           <img style="max-height: 225px;min-height:225px;object-fit:cover;" class="ps-product__thumbnail" src="{{ asset($product->thumbnail_img) }}" alt="alaat" /></a>
                           <a class="ps-product__expand" href="{{ route('product', $product->slug) }}"><i
                              class="icon-heart"></i></a>
                           @if ($product->tags == 'New')
                           <span class="ps-badge ps-product__new">New
                           </span>
                           @elseif($product->current_stock==0)
                           @if($product->variant_product == 1)
                           @php
                           $product_stock = \App\ProductStock::where('product_id', $product->id)->get()->sum('qty');
                           @endphp
                           @if($product_stock == 0)
                           <span class="ps-badge ps-product__stock">Out of stock
                           </span>
                           @endif
                           @else
                           @endif
                           @elseif($product->discount_type=='amount' && $product->discount > 0 )
                           <span class="ps-badge ps-product__offbadge">Rs {{ $product->discount }}
                           Off</span>
                           @elseif($product->discount_type=='percent'  &&  $product->discount > 0)
                           <span class="ps-badge ps-product__offbadge">{{ $product->discount }}%
                           Off</span>
                           @endif
                           <!-- <span class="ps-badge ps-product__offbadge">35% Off </span> -->
                           <div class="ps-product__content">
                              <p class="ps-product__type"><i
                                 class="icon-store"></i>{{ $product->user->name }}</p>
                              <h5><a class="ps-product__name" href="">{{ $product->name }}</a></h5>
                              <p class="ps-product__unit">{{ $product->unit }}</p>
                              {{-- 
                              <div class="star-rating star-rating-sm mt-1">
                                 {{ renderStarRating($product->rating) }}
                              </div>
                              --}}
                              <div class="ps-product__rating">
                                 {{-- {{ renderStarRating($product->rating) }} --}}
                                 <select class="rating-stars">
                                    {{ renderStarRating($product->rating) }}
                                    {{$a= $product->rating}}
                                    @for ($i = 1; $i < $a; $i++)
                                    <option value="{{ $i }}" selected="selected">{{ $i }}</option>
                                    @endfor
                                    <option value="3" selected="selected">3</option>
                                 </select>
                                 <span>{{$product->rating}} </span>
                              </div>
                              <p class="ps-product-price-block">
                                 @if ($product->discount)
                              <p class="ps-product-price-block">
                                 <span class="ps-product__sale">{{ home_discounted_price($product->id) }}</span>
                                 <span class="ps-product__price">{{ home_price($product->id) }}</span>
                              </p>
                              @else
                              <p class="ps-product-price-block">
                                 <span class="ps-product__sale">{{ home_discounted_price($product->id) }}</span>
                              </p>
                              @endif
                              </p>
                           </div>
                           <div class="ps-product__footer">
                              <button class="ps-product__addcart" onclick="showAddToCartModal({{ $product->id }})"><i class="icon-cart" ></i>Add to
                              cart</button>
                           </div>
                        </div>
                     </div>
                     @endforeach
                  </div>
               </div>
               <div class="ps-pagination blog--pagination">
                  {{ $products->links() }}
               </div>
            </div>
         </div>
      </div>
   </section>
</main>
@endsection
@section('script')
<script type="text/javascript">
   function filter() {
       // console.log($('#search-form'))
       $('#search-form').submit();
   }
   function rangefilter(arg) {
       $('input[name=min_price]').val(arg[0]);
       $('input[name=max_price]').val(arg[1]);
       filter();
   }
</script>
@endsection