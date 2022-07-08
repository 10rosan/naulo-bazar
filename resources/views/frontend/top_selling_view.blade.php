@extends('frontend.layouts.app')
@section('content')
 <main class="no-main">
        <div class="ps-breadcrumb">
            <div class="container">
                <ul class="ps-breadcrumb__list">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li class="active"><a href="shop.html">Category</a></li>
                    <li class="active"><a href="shop.html">Search Result</a></li>
                    <li><a href="javascript:void(0);">Product List</a></li>
                </ul>
            </div>
        </div>

    <div class="container">
        <div class="inner_banner">
            <a href="#">
              <img src="assets/img/promotion/promo-03.jpg" alt>
            </a>
        </div>
    </div>
        
<section class="section-shop shop-categories--default">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-3">
                <div class="ps-shop--sidebar">
                    <div class="sidebar__category">
                        <div class="sidebar__title">Related Categories</div>
                        <ul class="menu--mobile">
                            <li class="daily-deals category-item"> <a href="flash-sale.html">Daily Deals</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">Top Promotions</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">New Arrivals</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">Bakery</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">Frozen Foods</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">Beer, Wine &amp; Spirits</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">Baby &amp; Child</a>
                            </li>
                            <li class="category-item"> <a href="shop-categories.html">Kitchen &amp; Dining</a>
                            </li>
                        </ul>
                    </div>


                    <div class="sidebar__sort">
                        <div class="sidebar__block open">
                            <div class="sidebar__title">BY BRANDS<span class="shop-widget-toggle"><i class="icon-minus"></i></span></div>
                            <form action="#">
                                <div class="input-group">
                                    <input class="form-control" type="text" placeholder="Search brand...">
                                    <div class="input-group-append"><i class="icon-magnifier"></i></div>
                                </div>
                            </form>
                            <div class="brand__content">
                                <ul>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox0" value="">
                                            <label for="checkbox0">
                                                <span>Samsung</span>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox1" value="">
                                            <label for="checkbox1"><span>Nokia</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox2" value="">
                                            <label for="checkbox2"><span>Vivo</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox3" value="">
                                            <label for="checkbox3"><span>Motorola</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox4" value="">
                                            <label for="checkbox4"><span>Whiteberry</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox5" value="">
                                            <label for="checkbox5"><span>Lenovo</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox6" value="">
                                            <label for="checkbox6"><span>Videocon</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox7" value="">
                                            <label for="checkbox7"><span>OPPO</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkbox8" value="">
                                            <label for="checkbox8"><span>Baltra</span></label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar__block open">
                            <div class="sidebar__title">BY PRICE<span class="shop-widget-toggle"><i class="icon-minus"></i></span></div>
                            <div class="block__content">
                                <div class="block__price">
                                    <div id="slide-price"></div>
                                </div>
                                <div class="block__input">
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text">Rs</span></div>
                                        <input class="form-control" type="text" id="input-with-keypress-0">
                                    </div>
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text">Rs</span></div>
                                        <input class="form-control" type="text" id="input-with-keypress-1">
                                    </div>
                                    <button>Go</button>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__block open">
                            <div class="sidebar__title">AVG. REVIEW<span class="shop-widget-toggle"><i class="icon-minus"></i></span></div>
                            <div class="block__content">
                                <ul>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="avg5" value="">
                                            <label for="rating5">
                                                <select class="rating-stars" id="rating5">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5" selected="selected">5</option>
                                                </select><span class="text-up">& Up</span>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="avg4" value="">
                                            <label for="rating4">
                                                <select class="rating-stars" id="rating4">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4" selected="selected">4</option>
                                                    <option value="5">5</option>
                                                </select><span class="text-up">& Up</span>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="avg3" value="">
                                            <label for="rating3">
                                                <select class="rating-stars" id="rating3">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3" selected="selected">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select><span class="text-up">& Up</span>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="avg2" value="">
                                            <label for="rating2">
                                                <select class="rating-stars" id="rating2">
                                                    <option value="1">1</option>
                                                    <option value="2" selected="selected">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select><span class="text-up">& Up</span>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="avg1" value="">
                                            <label for="rating1">
                                                <select class="rating-stars" id="rating1">
                                                    <option value="1" selected="selected">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select><span class="text-up">& Up</span>
                                            </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar__block open">
                            <div class="sidebar__title">SOLD BY<span class="shop-widget-toggle"><i class="icon-minus"></i></span></div>
                            <div class="block__content">
                                <ul>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="sold0" value="">
                                            <label for="sold0">Naulobazar<span>(55)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="sold1" value="">
                                            <label for="sold1">All Vendors<span>(223)</span></label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar__block open">
                            <div class="sidebar__title">OPTIONS<span class="shop-widget-toggle"><i class="icon-minus"></i></span></div>
                            <div class="block__content">
                                <ul>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="option0" value="">
                                            <label for="option0">On Sales<span>(145)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="option1" value="">
                                            <label for="option1">New<span>(43)</span></label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="sidebar__block open">
                            <div class="sidebar__title">DIETARY & LIFESTYLE<span class="shop-widget-toggle"><i class="icon-minus"></i></span></div>
                            <div class="block__content">
                                <ul>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="life0" value="">
                                            <label for="life0">Vegetarian<span>(23)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="life1" value="">
                                            <label for="life1">Vegan<span>(37)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="life2" value="">
                                            <label for="life2">Gluten Free<span>(114)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="life3" value="">
                                            <label for="life3">Milk Free<span>(50)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="life4" value="">
                                            <label for="life4">Fat Free<span>(24)</span></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="life5" value="">
                                            <label for="life5">Organic<span>(18)</span></label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-9">
                
                <div class="result__header">
                   @php 
                   $pro_count = DB::table('products')->count();
                  
                   @endphp
                    <h4 class="title">{{$pro_count}}<span>Product Found</span></h4>
                    <div class="page">page
                        <input type="text" value="1" disabled>of 3
                    </div>
                </div>
                <div class="result__sort mt-5">
                    <div class="viewtype--block">
                        <div class="viewtype__sortby">
                            <div class="select">
                                <select class="single-select2-no-search" name="state">
                                    <option value="popularity" selected="selected">Sort by popularity</option>
                                    <option value="price">Sort by price</option>
                                    <option value="sale">Sort by sale of</option>
                                </select>
                            </div>
                        </div>
                        <div class="viewtype__select"> <span class="text">View: </span>
                            <div class="select">
                                <select class="single-select2-no-search" name="state">
                                    <option value="25" selected="selected">25 per page</option>
                                    <option value="12">12 per page</option>
                                    <option value="5">5 per page</option>
                                </select>
                            </div>
                            <div class="type"><a href="shop-categories.html"><span class="active"><i class="icon-icons"></i></span></a><a href="shop-view-extended.html"><span><i class="icon-grid3"></i></span></a><a href="shop-view-listing.html"><span><i class="icon-list4"></i></span></a></div>
                        </div>
                    </div>
                </div>
                <div class="result__header mobile">
                    <h4 class="title"><span>Product Found</span></h4>
                </div>
                <div class="result__content mt-4">
                    <div class="section-shop--grid">
                        <div class="row m-0">
                           @foreach (filter_products(\App\Product::where('published', 1)->orderBy('num_of_sale', 'desc'))->limit(20)->get() as $key => $product)
                                <div class="ps-sell__product">
                                    <div class="ps-product--standard">
                                        <a href="{{ route('product', $product->slug) }}">
                                           
                                            <img class="ps-product__thumbnail"
                                                src="{{asset($product->thumbnail_img)}}" alt="alt" height="60px" width="60px" /></a>
                                                <a class="ps-product__expand" href="" onclick="addToWishList()">
                                                    <i class="icon-heart"></i></a>
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
                                            <h5><a class="ps-product__name" href="">{{ $product->name }}</a></h5>
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
                                            <p class="ps-product-price-block">
                                                <span class="ps-product__sale">Rs.{{ $product->selling_price }}</span>
                                                @if ($product->discount)
                                                    <span class="ps-product__price">Rs.{{ $product->unit_price }}</span>
                                                @endif
                                            </p>

                                        </div>
                                        <div class="ps-product__footer">
                                            <div class="def-number-input number-input safari_only">
                                                <button class="minus"
                                                    onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i
                                                        class="icon-minus"></i></button>
                                                <input class="quantity" min="0" name="quantity" value="1" type="number" />
                                                <button class="plus"
                                                    onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i
                                                        class="icon-plus"></i></button>
                                            </div>
                                            <div class="ps-product__total">Total: <span>Rs14.99</span>
                                            </div>
                                            <button class="ps-product__addcart" onclick="showAddToCartModal({{ $product->id }})"><i class="icon-cart" ></i>Add to
                                                cart</button>

                                        </div>

                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</section>
    </main>
@endsection