@extends('frontend.layouts.app')

@section('Naulo Bazar')@stop

@section('meta_description')@stop

@section('meta')
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="">
    <meta itemprop="description" content="">
    <meta itemprop="image" content="">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="">
    <meta name="twitter:description" content="">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="">

    <!-- Open Graph data -->
    <meta property="og:title" content="" />
    <meta property="og:type" content="Shop" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <meta property="og:site_name" content="" />
@endsection
       @php
				$generalsetting = \App\GeneralSetting::first();
                  
				@endphp
@section('content')
    <!-- <section>
        <img loading="lazy"  src="https://via.placeholder.com/2000x300.jpg" alt="" class="img-fluid">
    </section> -->

  
  <main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="index.html">Home</a></li>
                <li class="active"><a href="vendor-list.html">Store List</a></li>
                <li><a href="javascript:void(0);">Naulo Bazar</a></li>
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
                    <li class="menu-item-has-children category-item"><a href="{{ route('products.category', $category->slug) }}">{{ __($category->name) }}</a><span class="sub-toggle"><i class="icon-chevron-down"></i></span>

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
                <h5 class="widget__title">Login to Send Text To Naulo Bazar</h5>


            </div>
            @endguest

            @auth
            <div class="contact__vendor">
                <h5 class="widget__title">CONTACT VENDOR</h5>

                <form class="" action="{{ route('conversations.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="product_id" value="0">
                    <div class="form-row">
                        {{-- <div class="col-12 form-group--block">
                            <input class="form-control" type="text"  placeholder="Your Name">
                        </div> --}}
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
                            <img src="{{asset($generalsetting->admin_logo)}}"
                            data-src=""
                            alt=""></div>
                    </div>
              
                    <div class="col-12 col-lg-8 p-0">
                        <div class="store__detail">
                            <h3 class="store__name">{{$generalsetting->site_name}}</h3>
                            <p class="store__address">{{$generalsetting->address}}</p>
                            <p class="store__phone">{{$generalsetting->phone}}</p>
                         
                            {{-- <p class="store__email"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="7b081a16080e151c241c1a0f131e093b1c161a121755181416">[email&#160;protected]</a></p> --}}
                            <div class="store__rating">


                                {{-- <select class="rating-stars">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4" selected="selected">4</option>
                                    <option value="5">5</option>
                                </select><span>(43 ratings)</span> --}}
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="store__perpage">
                <p class="result"> <span></span>Products Of Naulo Bazar </p>
                {{-- <p class="text-right">page
                    <input type="text" value="1">of 3
                </p> --}}
            </div>
            {{-- <div class="viewtype--block">
                <div class="viewtype__sortby">
                    <div class="select">
                        <select class="single-select2" name="state">
                            <option value="popularity">Sort by popularity</option>
                            <option value="price">Sort by price</option>
                            <option value="sale">Sort by sale of</option>
                        </select>
                    </div>
                </div>
                <div class="viewtype__select"> <span class="text">View: </span>
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
            </div> --}}
        <div class="store__product">
            <div class="row m-0">
        
			
                @foreach ($products as $key => $product)
                <div class="col-6 col-md-4 col-lg-3 p-0">
                    <div class="ps-product--standard">
                        <a href="{{ route('product', $product->slug) }}">
                            <img class="ps-product__thumbnail"
                               src="{{ asset($product->thumbnail_img) }}" alt="alaat" /></a>
                                <a class="ps-product__expand" href="{{ route('product', $product->slug) }}"><i
                                    class="icon-heart"></i></a>
                        @if ($product->tags == 'New')
                            <span class="ps-badge ps-product__new">New
                            </span>

                        @elseif($product->current_stock==0)
                            <span class="ps-badge ps-product__stock">Out of stock
                            </span>

                        @elseif($product->discount_type=='amount')
                            <span class="ps-badge ps-product__offbadge">Rs {{ $product->discount }}
                                Off</span>
                        @else

                            <span class="ps-badge ps-product__offbadge">{{ $product->discount }}%
                                Off</span>
                        @endif

                        <!-- <span class="ps-badge ps-product__offbadge">35% Off </span> -->
                        <div class="ps-product__content">
                            <p class="ps-product__type"><i
                                    class="icon-store"></i>{{ $product->user->name }}</p>
                            <h5><a class="ps-product__name" href="{{ route('product', $product->slug) }}">{{ $product->name }}</a></h5>
                            <p class="ps-product__unit">{{ $product->unit }}</p>
                            {{-- <div class="star-rating star-rating-sm mt-1">
                                {{ renderStarRating($product->rating) }}
                            </div> --}}
                            <div class="ps-product__rating">
                                {{-- {{ renderStarRating($product->rating) }} --}}
                                <select class="rating-stars">
                                    {{ renderStarRating($product->rating) }}
                                    {{$a= $product->rating}}
                                    @for ($i = 1; $i < $a; $i++)
                                    <option value="{{ $i }}" selected="selected">{{ $i }}</option>

                                    @endfor
                                    <option value="3" selected="selected">3</option>
                                </select><span>{{$product->rating}} </span>
                            </div>
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
