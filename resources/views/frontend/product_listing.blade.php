@extends('frontend.layouts.app')

@if (isset($subsubcategory_id))
    @php
	
        $meta_title = \App\SubSubCategory::find($subsubcategory_id)->meta_title;
        $meta_description = \App\SubSubCategory::find($subsubcategory_id)->meta_description;
    @endphp
@elseif (isset($subcategory_id))
    @php
        $meta_title = \App\SubCategory::find($subcategory_id)->meta_title;
        $meta_description = \App\SubCategory::find($subcategory_id)->meta_description;
    @endphp
@elseif (isset($category_id))
    @php
        $meta_title = \App\Category::find($category_id)->meta_title;
        $meta_description = \App\Category::find($category_id)->meta_description;
    @endphp
@elseif (isset($brand_id))
    @php
        $meta_title = \App\Brand::find($brand_id)->meta_title;
        $meta_description = \App\Brand::find($brand_id)->meta_description;
    @endphp
@else
    @php
        $meta_title = env('APP_NAME');
        $meta_description = \App\SeoSetting::first()->description;
    @endphp
@endif

@section('meta_title'){{ $meta_title }}@stop
@section('meta_description'){{ $meta_description }}@stop

@section('title', 'Product List')

@section('meta')
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ $meta_title }}">
    <meta itemprop="description" content="{{ $meta_description }}">

    <!-- Twitter Card data -->
    <meta name="twitter:title" content="{{ $meta_title }}">
    <meta name="twitter:description" content="{{ $meta_description }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $meta_title }}" />
    <meta property="og:description" content="{{ $meta_description }}" />
@endsection

@section('content')



    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
                <li><a href="{{ route('products') }}">{{ __('All Categories') }}</a></li>

                @if (isset($category_id))
                    <li class="active"><a
                            href="{{ route('products.category', \App\Category::find($category_id)->slug) }}">{{ \App\Category::find($category_id)->name }}</a>
                    </li>


                @endif
                @if (isset($subcategory_id))
                    <li><a
                            href="{{ route('products.category', \App\SubCategory::find($subcategory_id)->category->slug) }}">{{ \App\SubCategory::find($subcategory_id)->category->name }}</a>
                    </li>
                    <li class="active"><a
                            href="{{ route('products.subcategory', \App\SubCategory::find($subcategory_id)->slug) }}">{{ \App\SubCategory::find($subcategory_id)->name }}</a>
                    </li>
                @endif
                @if (isset($subsubcategory_id))
                    <li><a
                            href="{{ route('products.category', \App\SubSubCategory::find($subsubcategory_id)->subcategory->category->slug) }}">{{ \App\SubSubCategory::find($subsubcategory_id)->subcategory->category->name }}</a>
                    </li>
                    <li><a
                            href="{{ route('products.subcategory', \App\SubsubCategory::find($subsubcategory_id)->subcategory->slug) }}">{{ \App\SubsubCategory::find($subsubcategory_id)->subcategory->name }}</a>
                    </li>
                    <li class="active"><a
                            href="{{ route('products.subsubcategory', \App\SubSubCategory::find($subsubcategory_id)->slug) }}">{{ \App\SubSubCategory::find($subsubcategory_id)->name }}</a>
                    </li>

                @endif
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
                        <form class="" id="search-form" action="{{ route('search') }}" method="GET">
                            <div class="sidebar__category">
                                <div class="sidebar__title">Related Categories</div>
                                <ul class="menu--mobile">
                                    @if (!isset($category_id) && !isset($category_id) && !isset($subcategory_id) && !isset($subsubcategory_id))
                                        @foreach (\App\Category::all() as $category)
                                            <li class="daily-deals category-item"> <a
                                                    href="{{ route('products.category', $category->slug) }}">{{ __($category->name) }}</a>
                                            </li>
                                        @endforeach
                                    @endif

                                    @if (isset($category_id))
                                        <li class="category-item"> <a
                                                href="{{ route('products') }}">{{ __('All Categories') }}</a>
                                        </li>
                                        <li class="category-item"> <a
                                                href="{{ route('products.category', \App\Category::find($category_id)->slug) }}">{{ __(\App\Category::find($category_id)->name) }}</a>
                                        </li>
                                        @foreach (\App\Category::find($category_id)->subcategories as $key2 => $subcategory)
                                            <li class="category-item"> <a
                                                    href="{{ route('products.subcategory', $subcategory->slug) }}">{{ __($subcategory->name) }}</a>
                                            </li>
                                        @endforeach
                                    @endif


                                    @if (isset($subcategory_id))
                                        <li class="category-item"> <a
                                                href="{{ route('products') }}">{{ __('All Categories') }}</a>
                                        </li>
                                        <li class="category-item"><a
                                                href="{{ route('products.category', \App\SubCategory::find($subcategory_id)->category->slug) }}">{{ __(\App\SubCategory::find($subcategory_id)->category->name) }}</a>
                                        </li>
                                        <li class="category-item"> <a
                                                href="{{ route('products.subcategory', \App\SubCategory::find($subcategory_id)->slug) }}">{{ __(\App\SubCategory::find($subcategory_id)->name) }}</a>
                                        </li>

                                        @foreach (\App\SubCategory::find($subcategory_id)->subsubcategories as $key3 => $subsubcategory)
                                            <li class="category-item"> <a
                                                    href="{{ route('products.subsubcategory', $subsubcategory->slug) }}">{{ __($subsubcategory->name) }}</a>
                                            </li>
                                        @endforeach

                                    @endif


                                    @if (isset($subsubcategory_id))
                                        <li class="category-item"> <a
                                                href="{{ route('products') }}">{{ __('All Categories') }}</a>
                                        </li>
                                        <li class="category-item"> <a
                                                href="{{ route('products.category', \App\SubsubCategory::find($subsubcategory_id)->subcategory->category->slug) }}">{{ __(\App\SubSubCategory::find($subsubcategory_id)->subcategory->category->name) }}</a>
                                        </li>
                                        <li class="category-item"> <a
                                                href="{{ route('products.subcategory', \App\SubsubCategory::find($subsubcategory_id)->subcategory->slug) }}">{{ __(\App\SubsubCategory::find($subsubcategory_id)->subcategory->name) }}</a>
                                        </li>
                                        <li class="category-item"> <a
                                                href="{{ route('products.subsubcategory', \App\SubsubCategory::find($subsubcategory_id)->slug) }}">{{ __(\App\SubsubCategory::find($subsubcategory_id)->name) }}</a>
                                        </li>
                                        {{-- <li class="category-item"> <a href="shop-categories.html">Kitchen &amp; Dining</a>
                                </li> --}}
                                    @endif
                                </ul>
                            </div>


                            <div class="sidebar__sort">
                                <div class="sidebar__block open">
                                    <div class="sidebar__title">BY BRANDS<span class="shop-widget-toggle"><i
                                                class="icon-minus"></i></span></div>
                                    <form action="#">
                                        <div class="input-group">
                                            <input class="form-control" type="text" placeholder="Search brand...">
                                            <div class="input-group-append"><i class="icon-magnifier"></i></div>
                                        </div>
                                    </form>
                                    <div class="brand__content">
                                        <ul>
                                            {{-- <li>
                                            <div class="form-check">
                                                <select class="" data-placeholder="{{__('All Brands')}}" name="brand" onchange="filter()">
                                                    <option value="">{{__('All Brands')}}</option>
                                                    @foreach (\App\Brand::all() as $brand)
                                                        <option value="{{ $brand->slug }}" @isset($brand_id) @if ($brand_id == $brand->id) selected @endif @endisset>{{ $brand->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </li> --}}
                                            @php $count=1; @endphp
                                            @foreach (\App\Brand::all() as $brand)
                                                {{-- <option value="{{ $brand->slug }}" @isset($brand_id) @if ($brand_id == $brand->id) selected @endif @endisset>{{ $brand->name }}</option> --}}

                                                <li>
                                                    <div class="form-check">
                                                        {{-- <input type="text" readonly value="aaa"  onclick="filter()" name="brand"> --}}
                                                        <input class="form-check-input" @isset($brand_id)
                                                            @if ($brand_id == $brand->id) checked @endif @endisset type="checkbox"
                                                            id="checkbox-{{ $count }}" value="{{ $brand->slug }}"
                                                            onchange="filter()" name="brand">
                                                        <label
                                                            for="checkbox-{{ $count }}"><span>{{ $brand->name }}</span></label>
                                                    </div>
                                                </li>
                                                @php $count++; @endphp
                                            @endforeach

                                        </ul>
                                    </div>
                                </div>
                                <div class="sidebar__block open">
                                    <div class="sidebar__title">BY PRICE<span class="shop-widget-toggle"><i
                                                class="icon-minus"></i></span></div>
                                    <div class="block__content">
                                        <div class="block__price">
                                            <div id="slide-price"></div>
                                        </div>
                                        <div class="block__input">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span style="padding: 0px 5px;!important" class="input-group-text">Rs</span>
                                                </div>
                                                <input name="min_price" class="form-control" type="text" id="input-with-keypress-0">
                                            </div>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span style="padding: 0px 5px;!important" class="input-group-text">Rs</span>
                                                </div>
                                                <input name="max_price" class="form-control" type="text" id="input-with-keypress-1">
                                            </div>
                                            <button>Go</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="sidebar__block open">
                                    <div class="sidebar__title">AVG. REVIEW<span class="shop-widget-toggle"><i
                                                class="icon-minus"></i></span></div>
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
                                    <div class="sidebar__title">SOLD BY<span class="shop-widget-toggle">
                                            <i class="icon-minus"></i>HI</span></div>
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
                                    <div class="sidebar__title">OPTIONS<span class="shop-widget-toggle"><i
                                                class="icon-minus"></i></span></div>
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
                                    <div class="sidebar__title">DIETARY & LIFESTYLE<span class="shop-widget-toggle"><i
                                                class="icon-minus"></i></span></div>
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
                        </form>
                    </div>
                </div>
                <div class="col-12 col-lg-9">

                    <div class="result__header">
                        <h4 class="title"> {{$productCount}} <span>Product Found</span></h4>
                        <div class="page">page
                            <input type="text" value="1" disabled>of 5
                        </div>
                    </div>
                    <div class="result__sort mt-5">
                        <div class="viewtype--block">
                            <div class="viewtype__sortby">
                                <div class="select">
                                    <select class="single-select2-no-search" data-minimum-results-for-search="Infinity"
                                        name="sort_by" onchange="filter()">
                                        <option value="1" @isset($sort_by) @if ($sort_by == '1') selected @endif @endisset>
                                            {{ __('Newest') }}</option>
                                        <option value="2" @isset($sort_by) @if ($sort_by == '2') selected @endif @endisset>
                                            {{ __('Oldest') }}</option>
                                        <option value="3" @isset($sort_by) @if ($sort_by == '3') selected @endif @endisset>
                                            {{ __('Price low to high') }}</option>
                                        <option value="4" @isset($sort_by) @if ($sort_by == '4') selected @endif @endisset>
                                            {{ __('Price high to low') }}</option>
                                    </select>
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
                                <div class="type"><a href="shop-categories.html"><span class="active"><i
                                                class="icon-icons"></i></span></a><a
                                        href="shop-view-extended.html"><span><i class="icon-grid3"></i></span></a><a
                                        href="shop-view-listing.html"><span><i class="icon-list4"></i></span></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="result__header mobile">
                        <h4 class="title"><span>Product Found</span></h4>
                    </div>

                    <div class="result__content">
                        <div class="section-shop--listing">





                            @foreach ($products as $key => $product)
                         
                         
                                {{-- @php
                dd();
            @endphp --}}
                          
                                <div class="product-item">
                                    <div class="ps-product--list">
                                        <div class="ps-product__left">
                                            <div class="ps-product__extent"><a
                                                    href="{{ route('product', $product->slug) }}">
                                                    <img class="ps-product__thumbnail"
                                                        src="{{ asset($product->thumbnail_img) }}"
                                                        data-src="{{ asset($product->thumbnail_img) }}"
                                                        alt="{{ __($product->name) }}" /></a>
                                              
                                                <a class="ps-product__expand"
                                                    onclick="addToWishList({{ $product->id }})"
                                                    href="javascript:void(0);">
                                                    <i class="icon-heart"></i></a>
                                                @if ($product->discount_type == 'amount')
                                                    <span class="ps-badge ps-product__offbadge">Rs
                                                        {{ $product->discount }}
                                                        Off</span>
                                                @else

                                                    <span
                                                        class="ps-badge ps-product__offbadge">{{ $product->discount }}%
                                                        Off</span>
                                                @endif
                                                {{-- <span class="ps-badge ps-product__offbadge">25% Off </span> --}}

                                                <div class="ps-product__footer">
                                                    <div class="def-number-input number-input safari_only">
                                                        <button class="minus"
                                                            onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i
                                                                class="icon-minus"></i></button>
                                                        <input class="quantity" min="0" name="quantity" value="1"
                                                            type="number" />
                                                        <button class="plus"
                                                            onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i
                                                                class="icon-plus"></i></button>
                                                    </div>
                                                    <div class="ps-product__total">Total: <span>Rs69.90</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ps-product__content">
                                                <div class="ps-product__type">

                                                    <i class="icon-store"></i>

                                                    @if ($product->added_by == 'seller' && \App\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1)
                                                        <span></span>Sold By:<a
                                                            href="{{ route('shop.visit', $product->user->shop->slug) }}"><b>
                                                                {{ $product->user->shop->name }}</b></a>
                                                    @else
                                                        <a href=""><b> {{ __('Inhouse product') }}</b></a>
                                                    @endif
                                                </div>

                                                <a class="ps-product__name"
                                                    href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a>
                                                <div class="ps-product__rating">
                                                    <select class="rating-stars">


                                                        {{-- <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option> --}}

                                                        {{ renderStarRating($product->rating) }}
                                                        {{ $a = $product->rating }}
                                                        @for ($i = 1; $i < $a; $i++)
                                                            <option value="{{ $i }}" selected="selected">
                                                                {{ $i }}</option>

                                                        @endfor
                                                        {{-- <option value="5">5</option> --}}
                                                    </select><span>{{ $product->rating }}</span>
                                                </div>
                                                <div class="ps-product__des">
                                                    <ul class="ps-list--rectangle">
                                                        <li> <span><i class="icon-square"></i></span>Type:
                                                            {{ $product->category->name }} </li>
                                                        {{-- <li> <span><i class="icon-square"></i></span>MFG: Jun 4.2020</li>
                                    <li> <span><i class="icon-square"></i></span>LIFE: 30 days</li> --}}
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ps-product__right">
                                            <div class="ps-product__sale"><span
                                                    class="ps-product__priceSale">{{ home_discounted_base_price($product->id) }}</span>
                                                @if (home_base_price($product->id) != home_discounted_base_price($product->id))
                                                    <span
                                                        class="ps-product__price">{{ home_base_price($product->id) }}</span>
                                                @endif
                                                {{-- <span class="ps-product__off">35% Off</span> --}}
                                            </div>
                                            <div class="ps-product__unit">{{ $product->unit }}</div>
                                            <button class="btn ps-product__addcart"
                                                onclick="showAddToCartModal({{ $product->id }})"><i
                                                    class="icon-cart"></i>Add to cart</button>
                                        </div>
                                    </div>
                                </div>
							
                            @endforeach
			


                        </div>
                        <div class="ps-pagination blog--pagination">
                            <ul class="pagination">

                                {{ $products->links() }}


                            </ul>
                        </div>
                    </div>
                </div>




            </div>
        </div>
        </div>
    </section>



@endsection

@section('script')
    <script type="text/javascript">
    //  $("#search-form").submit(function(e){
    //     var checkedItem = [];
    //         $.each($("input[name='brand']:checked"), function(){
    //             checkedItem.push($(this).val());
    //         });
    //         alert("Checked is: " + checkedItem.join(", "));
    //     // if($(this))
    //     console.log($(this));
    //     e.preventDefault();
    // });
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
