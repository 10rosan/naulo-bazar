@extends('frontend.layouts.app')

@section('content') 
  @php
      $data_of_time =[];
      $flash_deals_count = \App\FlashDeal::where([
                                    ['status', 1],
                                    ['featured', 1],
                                    ['end_date','>=',strtotime(now())],
                        ])->count();
       $flash_deals = \App\FlashDeal::where([
                                    ['status', 1],
                                    ['featured', 1],
                                    ['end_date','>=',strtotime(now())],
                        ])->with('flash_deal_products')->get();
                                                    
                                      
  
   @endphp
<style>
  .demo{
      background: #e84506;
    color: #ffff!important;
    padding: 10px 10px 10px 9px;
    font-weight: 800;
  }
  .hidden{
      display: none;
  }
                                      </style>
     @if($flash_deals != null && $flash_deals_count > 0)                                 
        <main class="no-main ">
            <section class="section--flashSale main33">
                <div class="flashSale__banner">
                    <div class="inner_banner">
                        <a href="#">
                        <img src="{{ asset($flash_deals_seting->banner) }}" alt style="max-height: 225px;min-height: 225px;">
                            <div class="ps-banner--block">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-12 col-lg-2"></div>
                                        <div class="col-12 col-lg-10">
                                            <div class="ps-banner__content">
                                                <div class="ps-banner__discount">{{ $flash_deals_seting->title }}<span class="ps-discount"> <span class="ps-discount__font">% </span><span class="ps-discount__text">OFF</span></span></div>
                                                <div class="ps-banner__text">
                                                    <div class="ps-banner__title">get your own <br>daily big & best deals.</div>
                                                    <div class="ps-banner__subtitle">Update at 12 AM everyday.</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="flashSale__header">
                    <div class="container">
                        <h3 class="flashSale__title">
                        Flash Sale
                        <span class="ps-countdown">
                            <span class="ps-countdown-end">
                            Ends in : 
                            </span>
                            <span class="demo"></span>
                        </span>
                    </h3>
                    </div>
                </div>
                <div class="container">
                
                    <div class="flashSale__product">
                        <div class="row m-0">
                        
                        @foreach ($flash_deals as $key => $flash_deal)
                            
                            @php
                                $enddate=$flash_deal->end_date;
                                $data_of_time=date('m/d/Y H:i', $enddate);
                                @endphp  
                                @foreach ($flash_deal->flash_deal_products as $product)
                                @php
                                        $flash_deal_product = \App\Product::find($product->product_id);
                                @endphp
                          
                          @php
                                $qty = 0;
                                if($flash_deal_product->variant_product){
                                    foreach ($flash_deal_product->stocks as $key => $stock) {
                                        $qty += $stock->qty;
                                    }
                                }
                                else{
                                        $qty = $flash_deal_product->current_stock;
                                }
                            @endphp
                        
                            <div class="col-6 col-md-4 col-lg-2dot4 p-0">
                                <div class="ps-product--standard">
                                <a href="{{ route('product', $flash_deal_product->slug) }}">
                                    <img class="ps-product__thumbnail" src="{{ asset($flash_deal_product->thumbnail_img) }}" alt="alt" /></a>
                                <a class="ps-product__expand" href="javascript:void(0);" data-toggle="modal" data-target="#popupQuickview"><i class="icon-expand"></i></a>
                                @if ($flash_deal_product->tags == 'New')
                                                    <span class="ps-badge ps-product__new">New
                                                    </span>

                                                @elseif($qty==0)
                                                    <span class="ps-badge ps-product__stock">Out of stock
                                                    </span>
                                
                                                @elseif($flash_deal_product->discount_type=='amount'  &&  $product->discount > 0)
                                                    <span class="ps-badge ps-product__offbadge">Rs {{ $flash_deal_product->discount }}
                                                        Off</span>
                                                @elseif($flash_deal_product->discount_type=='percent'  &&  $product->discount > 0)

                                                    <span class="ps-badge ps-product__offbadge">{{ $flash_deal_product->discount }}%
                                                        Off</span>
                                                @endif
                                    <div class="ps-product__content">
                                        <p class="ps-product__type"><i class="icon-store"></i>Naulobazar Mart</p>
                                        <h5><a class="ps-product__name" href="{{ route('product', $flash_deal_product->slug) }}">{{ $flash_deal_product->name }}</a></h5>
                                        <p class="ps-product__unit">{{ $flash_deal_product->unit }}</p>
                                        <div class="ps-product__rating">
                                                {{-- {{ renderStarRating($flash_deal_product->rating) }} --}}
                                                <select class="rating-stars">
                                                    {{ renderStarRating($flash_deal_product->rating) }}
                                                    {{$a= $flash_deal_product->rating}}
                                                    @for ($i = 1; $i < $a; $i++)
                                                    <option value="{{ $i }}" selected="selected">{{ $i }}</option>

                                                    @endfor

                                                </select><span>{{$flash_deal_product->rating}} </span>
                                            </div>
                                        @if ($flash_deal_product->discount)
                                                    <p class="ps-product-price-block">
                                                        <span class="ps-product__sale">{{ home_discounted_price($flash_deal_product->id) }}</span>
                                                        <span class="ps-product__price">{{ home_price($flash_deal_product->id) }}</span>
                                                    </p>
                                                    @else
                                                    <p class="ps-product-price-block">
                                                        <span class="ps-product__sale">{{ home_discounted_price($flash_deal_product->id) }}</span>
                                                    
                                                    </p>
                                                    @endif
                                        <div class="progress">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 0%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <p class="ps-product__sold">Sold: 0/50</p>
                                    </div>
                                    <div class="ps-product__footer">
                                        <div class="def-number-input number-input safari_only">
                                            <button class="minus" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="icon-minus"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" />
                                            <button class="plus" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="icon-plus"></i></button>
                                        </div>
                                        <div class="ps-product__total">Total: <span>Rs15.90</span>
                                        </div>
                                <button class="ps-product__addcart" onclick="showAddToCartModal({{ $flash_deal_product->id }})">
                                            <i class="icon-cart" ></i>Add to cart</button>
                                    </div>
                                </div>
                            </div>
                        
                            @endforeach
                                @endforeach

                        </div>
                    </div>
                    <div class="flashSale__loading">
                        <p>LOADING...</p>
                    </div>
                </div>
            </section>  

            
            <div class="hidden no-item" style="text-align:center;">            
                <h2>No Flash Deals Available</h2>
            </div>


    
            <script>
                var data=@json($data_of_time);
                // console.log('data '+data);
                var countDownDate = new Date(data).getTime();
                //console.log('countDownDate '+countDownDate);

                // Update the count down every 1 second
                var x = setInterval(function() {

                // Get today's date and time
                var now = new Date().getTime();
                //  console.log('now '+now);
                //   alert(countDownDate);

                // Find the distance between now and the count down date
                var distance = countDownDate - now;
                // console.log('distance '+distance);

                // Time calculations for days, hours, minutes and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                // console.log(document.getElementsByClassName("demo"));
                //console.log('tgtgg '+days + "d " + hours + "h "+ minutes + "m " + seconds + "s ");

                // Output the result in an element with id="demo"
                $('.demo').text(days + " days : " + hours + " hours : "+ minutes + " minutes : " + seconds + " seconds");
                // $('.days').text(days);
                // $('.hours').text(hours);
                //$('.minutes').text(minutes);
                // $('.seconds').text(seconds);
                //var countDownText = "";
                //document.getElementsByClassName("demo").innerHTML = days + "d " + hours + "h "+ minutes + "m " + seconds + "s ";

                // If the count down is over, write some text
                    if (distance < 0) {
                        clearInterval(x);
                        $('.demo').text("EXPIRED");
                        $('.main33').addClass('hidden');
                        $('.no-item').removeClass('hidden');
                        
                        //document.getElementsByClassName("demo").innerHTML = "EXPIRED";
                    }else{
                        $('.main33').removeClass('hidden');
                        $('.no-item').addClass('hidden');

                    }
                }, 1000);
            </script>
        </main>
    @else
    <main class="no-main">
        <div style="text-align:center;">
            
        <h2>No Flash Deals Available</h2>
        </div>
    </main>
        @endif

  @endsection
   
    <script src="assets/js/main.js"></script>
 </body>
</html>