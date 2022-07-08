@extends('frontend.layouts.app')

@section('content')

<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="javascript:void(0);">User Dashboard </a></li>
            </ul>
        </div>
    </div>

    <section class="section--become">
        <?php
            // $image=DB::table('users')->where()    
        ?>
        <div class="text-center">
            @php
                // dd(auth()->user()->avatar);
            @endphp
          </div>
        <h2 class="page__title">My Dashboard </h2>
   
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-3">
                    @include('frontend.inc.seller_side_nav');
                    </div>
                    <div class="col-12 col-lg-9">
                        <div class="user__content mb-30">
                            <div class="row m-0">
                                <div class="col-6 col-sm-12 col-md-6 col-lg-4 user__item">
                                   @if(Auth::user()->avatar_original)
                                    <div class="user__icon"><i class=""><img src="{{asset(Auth::user()->avatar_original)}}" alt="" srcset="" height="75px" width="75px"></i></div>
                                  @else
                                  <div class="user__icon"><i class=""><img src="{{asset('uploads/users/userr.png')}}" alt="" srcset="" height="75px" width="75px"></i></div>
                                  @endif
                                    <div class="user__item__content">
                                        <div class="user_setting_name">My Profile</div>
                                        <p class="user_name">{{Auth()->user()->name}}</p>
                                        <a href="{{route('profile')}}" class="btn btn-light btn-sm">
                                            Edit Profile
                                        </a>
                                    </div>
                                </div>
                            
                                <div class="col-6 col-lg-4 user__item">
                                    <div class="user__icon"><i class="icon-map-marker-user"></i></div>
                                    <div class="user__item__content">
                                        <div class="user_setting_name">My Address</div>
                                        <p>{{Auth::user()->address}}</p>
                                        <p class="user_name"></p>
                                        <a href="" class="btn btn-light btn-sm">
                                            Edit Address
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4 user__item">
                                    <div class="user__icon"><i class="icon-cart-add"></i></div>
                                    <div class="user__item__content">
                                        <div class="user_setting_name">My Order</div>
                                        <p class="user_name">Total Order:<span>{{$myOrderCount}}</span> </p>
                                        <a href="{{route('purchase_history.index')}}" class="btn btn-light btn-sm">
                                            View Order
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4 user__item">
                                    <div class="user__icon"><i class="icon-cart-remove"></i></div>
                                    <div class="user__item__content">
                                        <div class="user_setting_name">My Returns</div>
                                        <p class="user_name">Order Returns: <span></span> </p>
                                        <a href="#" class="btn btn-light btn-sm">
                                            View Returns
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4 user__item">
                                    <div class="user__icon"><i class="icon-stream-error"></i></div>
                                    <div class="user__item__content">
                                        <div class="user_setting_name">My Cancellations</div>
                                        <p class="user_name">Order Cancel: <span></span> </p>
                                        <a href="#" class="btn btn-light btn-sm">
                                            View Cancellations
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-4 vender__item">
                                    <div class="vender__icon"><i class="icon-heart"></i></div>
                                    <div class="user__item__content">
                                        <div class="user_setting_name">My Wishlist</div>
                                        <p class="user_name">Wishlist: <span></span> </p>
                                        <a href="{{url('wishlists')}}" class="btn btn-light btn-sm">
                                            View Wishlist
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                      
                        
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div> 
     
    </section>
</main>

@endsection
@section('script')
<script type="text/javascript">
$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
@endsection
