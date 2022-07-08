
<section class="section--product-type related-product-block">
    <div class="container">
          <div class="product__related" id="productTabDetailContent">
                <h3 class="product__name">Related Products</h3>
                <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="5" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="5" data-owl-item-xl="5" data-owl-duration="1000" data-owl-mousedrag="on">

                    @foreach (filter_products(\App\Product::where('subcategory_id', $detailedProduct->subcategory_id)->where('id', '!=', $detailedProduct->id))->limit(10)->get() as $key => $product)
                    <div class="ps-sell__product">
                                    <div class="ps-product--standard">
                                        <a href="{{ route('product', $product->slug) }}"><img class="ps-product__thumbnail" src="{{ asset($product->thumbnail_img) }}" alt="altaa" /></a>
                                                <a class="ps-product__expand" href="" onclick="addToWishList({{ $product->id }})"><i
                                                    class="icon-heart"></i></a>
                                        @if ($product->tags == 'New')
                                            <span class="ps-badge ps-product__new">New
                                            </span>


                                        @elseif($product->discount_type=='amount' && $product->discount >0)
                                            <span class="ps-badge ps-product__offbadge">Rs {{ $product->discount }}
                                                Off</span>
                                        @elseif($product->discount >0)

                                            <span class="ps-badge ps-product__offbadge">{{ $product->discount }}%
                                                Off</span>
                                        @endif
                                         @php
                                                $qty = 0;
                                              if($product->variant_product){
                                                  foreach ($product->stocks as $key => $stock) {
                                                      $qty += $stock->qty;
                                                  }
                                              }
                                              else{
                                                     $qty = $product->current_stock ;
                                              }
                                        @endphp
                                         @if($qty <= 0)
                                  
                                            <span class="ps-badge ps-product__stock">Out of stock
                                            </span>
                                        @endif

                                        <!-- <span class="ps-badge ps-product__offbadge">35% Off </span> -->
                                        <div class="ps-product__content">
                                            <p class="ps-product__type"><i
                                                    class="icon-store"></i>
                                          
                                          
                                          @if ($product->added_by == 'seller' && \App\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1)
                                             <span></span>Sold By:<a href="{{ route('shop.visit', $product->user->shop->slug) }}"><b> {{ $product->user->shop->name }}</b></a>
                                            @else
                                             <a href=""><b>  {{ __('Inhouse product') }}</b></a>
                                            @endif
                                          </p>
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
                                         
                                            
                                            <!--<p class="ps-product-price-block">-->
                                            <!--    <span class="ps-product__sale">Rs.{{ $product->selling_price }}</span>-->
                                            <!--    @if ($product->discount)-->
                                            <!--        <span class="ps-product__price">Rs.{{ $product->unit_price }}</span>-->
                                            <!--    @endif-->
                                            <!--</p>-->

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
    </div>
</section>
