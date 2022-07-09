@if (\App\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1)
    @php
        $array = \App\Seller::where('verification_status','1')->with('user')->with('userdetails')->get();
        // $array = array();
        // foreach (\App\Seller::where('verification_status', 1)->get() as $key => $seller) {
        //     if($seller->user != null && $seller->user->shop != null){
        //         $total_sale = 0;
        //         foreach ($seller->user->products as $key => $product) {
        //             $total_sale += $product->num_of_sale;
        //         }
        //         $array[$seller->id] = $total_sale;
        //     }
        // }
        // asort($array);
        // echo'<pre>';
        //     print_r(count($array->userdetails));
        //     echo'</pre>';
        // foreach($array as $a => $b){
        //    if (!empty($b->userdetails)) {
        //        dd($b->userdetails->usershop);
        //        # code...
        //    }
        // }
        // dd($array);
        // die;
    @endphp
<style>
  .vendor-avatar img{
  	max-height: 60px;
    min-height: 60px;
    object-fit: cover;
  }
  .vendor-img img{
  max-height: 225px;
    min-height: 225px;
    object-fit: cover;
  }
</style>
    @if(!empty($array))


    <section class="section--storeList">
        <div class="container">
            <div class="storeList__content pb-0">
                <div class="component__header" style=" display: flex; justify-content: space-between; margin: 45px 0 25px;">
                    <h3 class="component__title">Our Top Vendors</h3>
                   <a class="component__view" href="{{route('seller')}}" style=" font-size: 15px; letter-spacing: 0.014em; text-transform: uppercase; font-weight: 600; color: #006699; " >View All <i class="icon-chevron-right"></i></a>
                </div>
                <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="8000" data-owl-gap="10" data-owl-nav="true" data-owl-dots="false" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="2" data-owl-item-lg="4" data-owl-item-xl="4" data-owl-duration="1000" data-owl-mousedrag="on">
                    @php
                    $count = 0;
                @endphp
                @foreach ($array as $key => $value)
                    @if ($count < 20)
                        {{-- @php
                            $count ++;
                            $seller = \App\Seller::find($key);
                            $total = 0;
                            $rating = 0;
                            foreach ($seller->user->products as $key => $seller_product) {
                                $total += $seller_product->reviews->count();
                                $rating += $seller_product->reviews->sum('rating');
                            }
                        @endphp --}}
                        {{-- $value->userdetails->usershop --}}
                        @if(isset($value->userdetails->usershop))
                    <div class="storeList__item">
                            <div class="item__header vendor-img">
                            <img src="{{ ($value->userdetails->usershop->logo == '')? (asset('shop/logo/naulo.jpg')) : (asset($value->userdetails->usershop->logo)) }}" alt="alt" />
                                <div class="item__content">
                                    <h5 class="item__title">{{ $value->userdetails->usershop->name }} </h5>
                                    <div class="item__rating">
                                        <select class="rating-stars">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3" selected="selected">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                    <div class="item__street">{{ $value->userdetails->usershop->address }}</div>
                                    {{-- <div class="item__address">44600, Kathmandu, Nepal</div> --}}
                                    <div class="item__phone"> <i class="fa fa-phone"></i>{{ $value->userdetails->phone }}</div>
                                </div>
                            </div>
                            <div class="item__footer"><a class="item__store" href="{{ route('shop.visit', $value->userdetails->usershop->slug) }}">Visit Store</a>
                                <div class="item__avatar">
                                    <div class="avatar vendor-avatar">

                            @if($value->user)
                                      @if($value->user->avatar_original != '')
                                      	<img src="{{asset($value->user->avatar_original)}}" alt="{{ $value->userdetails->usershop->name }} " />
                                      @else
                                      	<img src="{{asset('shop/logo/naulo.jpg')}}" alt="{{ $value->userdetails->usershop->name }} " />
                                      @endif
                            @else
                                      @if($value->user->avatar != '')
                                      	<img src="{{asset($value->user->avatar)}}" alt="{{ $value->userdetails->usershop->name }} " />
                                      @else
                                      	<img src="{{asset('shop/logo/naulo.jpg')}}" alt="{{ $value->userdetails->usershop->name }} " />
                                      @endif
                            @endif
                                      </div>
                                </div>

                            </div>
                    </div>
                        @endif
                    @endif
                    @endforeach

                </div>

            </div>

        </div>
    </section>
@endif
@endif
