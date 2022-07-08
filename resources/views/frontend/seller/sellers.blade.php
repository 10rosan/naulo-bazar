@extends('frontend.layouts.app')
@section('content')
<style>
  .item__header img{
  max-height: 225px;
    min-height: 225px;
    object-fit: cover;
  }
  .avatar img{
  	max-height: 60px;
    min-height: 60px;
    object-fit: cover;
  }
</style>
<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="javascript:void(0);">Store List</a></li>
            </ul>
        </div>
    </div>


<section class="section--storeList">
    <div class="container">
        <h2 class="page__title">Store List</h2>
        <div class="storeList__search row">
            <div class="col-12 col-lg-4">
               
            </div>
        </div>
        <div class="storeList__content">
            <div class="row">
             
          
                @forelse($shop as $store)
             @if(!($store->seller->verification_status == 1))
             
              @else
                <div class="col-12 col-lg-4">
                    <div class="storeList__item">
                    
                        <div class="item__header">
                          
                                 @if($store->shop->logo != '')
                                  <img src="{{asset($store->shop->logo)}}" alt="alt" />
                                  @else
                                  	<img src="{{asset('/shop/logo/naulo.jpg')}}" alt="alt" />
                                  @endif
                          
                            <div class="item__content">
                               @if($store->shop)
                                    @if($store->shop->name)
                                    <h5 class="item__title"> {{$store->shop->name}} </h5>
                                    @else
                                    <h5 class="item__title"> {{$store->name}} </h5>
                                    @endif
                                    <div class="item__street">{{$store->shop->address}}</div>
                                    <div class="item__address">44600, Kathmandu, Nepal</div>
                                    <div class="item__phone"> <i class="fa fa-phone"></i>(+977) {{$store->phone}}</div>
                                @else
                                    <h5 class="item__title"> {{$store->name}} </h5>
                                    <div class="item__street">{{$store->address}}, {{$store->postal_code}} </div>
                                    <div class="item__address">{{$store->postal_code}}, {{$store->city}}, {{$store->country}}</div>
                                    <div class="item__phone"> <i class="fa fa-phone"></i>(+977) {{$store->phone}}</div>
                                @endif
                                
                            </div>
                        </div>
                     
                        <div class="item__footer"><a class="item__store" href="{{ route('shop.visit', $store->shop->slug) }}">Visit Store</a>
                            <div class="item__avatar">
                            @if($store->shop)
                                <div class="avatar">
                                 @if($store->avatar_original != '')
                                  <img src="{{asset($store->avatar_original)}}" alt="alt" />
                                  @else
                                  	<img src="{{asset('/shop/logo/naulo.jpg')}}" alt="alt" />
                                  @endif
                                  
                              </div>
                            @else
                            <div class="avatar">
                                 @if($store->avatar != '')
                                  <img src="{{asset($store->avatar)}}" alt="alt" />
                                  @else
                                  	<img src="{{asset('/shop/logo/naulo.jpg')}}" alt="alt" />
                                  @endif
                              </div>
                            @endif
                            </div>
                        </div>
                    </div>
                </div>
            
              @endif
         	@empty
              No verified vendors
              
              
                @endforelse
                 
            </div>
        </div>
    </div>
</section>


</main>
@endsection