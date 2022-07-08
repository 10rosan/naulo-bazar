@php
$generalsetting = \App\GeneralSetting::first();
@endphp
<footer class="ps-footer">
                <div class="container">
                    <div class="ps-footer--contact">
                        <div class="row">
                            <div class="col-12 col-lg-4">
                                <p class="contact__title">Contact Us</p>
                                <p><b><i class="icon-telephone"> </i>Hotline: </b><span>( Anytime )</span></p>
                              	<a href="tel:{{ $generalsetting->phone }}">{{ $generalsetting->phone }}</a><br>
                              	<a href="tel:+977-9843766625">+977-9843766625</a>
                                <p> <b>Head office: </b>{{$generalsetting->address}}</p>
                                <p> <b>Email us: </b><a  class="">{{$generalsetting->email}}</a></p>
                            </div>
                            <div class="col-12 col-lg-4">
                                <div class="row">
                                    <div class="col-12 col-lg-6">
                                        <p class="contact__title">Help & Info<span class="footer-toggle"><i class="icon-chevron-down"></i></span></p>
                                        <ul class="footer-list">
                                            <li> <a href="{{url('about')}}">About Us</a>
                                            </li>
                                            <li> <a href="{{url('contact')}}">Contact</a>
                                            </li>
                                            <li> <a href="#">Store Locations</a>
                                            </li>
                                            <li> <a href="{{ route('terms') }}">Terms of Use</a>
                                            </li>
                                            <li> <a href="{{ route('privacypolicy') }}">Privacy Policy</a>
                                            </li>
                                            <li> <a href="#">FAQs / Help</a>
                                            </li>
                                        </ul>
                                        <hr>
                                    </div>
                                    <div class="col-12 col-lg-6">
                                        <p class="contact__title">Corporate<span class="footer-toggle"><i class="icon-chevron-down"></i></span></p>
                                        <ul class="footer-list">
                                            @if (\App\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1)
                                            <li> <a href="{{ route('shops.create') }}">Become a Vendor</a>
                                            </li>
                                            @endif
                                         
                                            @foreach (\App\Link::get()->take(3) as $key => $link)
                                            <li> <a href="{{ $link->url }}">{{ $link->name }}</a>
                                            </li>
                                            @endforeach
                                            {{-- <li> <a href="#">Store Business</a>
                                            </li>
                                            <li> <a href="#">Careers</a>
                                            </li>
                                            <li> <a href="#">Our Suppliers</a>
                                            </li>
                                            <li> <a href="#">Accessibility</a>
                                            </li> --}}
                                        </ul>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-4">
                                <p class="contact__title">Newsletter Subscription</p>
                                <p>{{ $generalsetting->description }}</b></p>
                                <form method="POST" action="{{ route('subscribers.store') }}">
                                 {{ csrf_field() }}

                                <div class="input-group">
                                    <div class="input-group-prepend"><i class="icon-envelope"></i></div>
                                    <input class="form-control" type="email" name="email" placeholder="Enter your email..." required>
                                    <div class="input-group-append">
                                        <button type="submit" class="btn">Subscribe</button>
                                    </div>
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>
                    <div class="ps-footer--service">
                        <div class="row">
                            <div class="col-12 col-lg-4">
                                <div class="service__payment">
        							<img src="{{asset('assets/img/promotion/payment_paypal.jpg')}}" alt>
        							<img src="{{asset('assets/img/promotion/payment_visa.jpg')}}" alt>
        							<img src="{{asset('assets/img/promotion/payment_esewa.jpg')}}" alt>
        							<img src="{{asset('assets/img/promotion/payment_imepay.png')}}" alt>
        						</div>
                                <p class="service__app">Get NauloBazar App to <span class="text-success">get Rs15 coupon</span></p>
                                <div class="service__download"><a href="#"><img src="{{asset('assets/img/promotion/appstore.jpg')}}" alt></a><a href="#"><img src="{{asset('assets/img/promotion/googleplay.jpg')}}" alt></a></div>
                            </div>
                            <div class="col-12 col-lg-4">
                                <table class="table table-bordered">
                                    <tr>
                                        <td><a href="#"><img src="{{asset('assets/img/promotion/badges_01.jpg')}}" alt></a></td>
                                        <td><a href="#"><img src="{{asset('assets/img/promotion/badges_02.jpg')}}" alt></a></td>
                                        <td><a href="#"><img src="{{asset('assets/img/promotion/badges_03.jpg')}}" alt></a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#"><img src="{{asset('assets/img/promotion/badges_04.jpg')}}" alt></a></td>
                                        <td><a href="#"><img src="{{asset('assets/img/promotion/badges_05.jpg')}}" alt></a></td>
                                        <td><a href="#"><img src="{{asset('assets/img/promotion/badges_06.jpg')}}" alt></a></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-12 col-lg-4">
                                <div class="service--block">
                                    <p class="service__item"> <i class="icon-speed-fast"></i><span> <b>Fast Delivery </b>& Shipping</span></p>
                                    <p class="service__item"> <i class="icon-color-sampler"></i><span>Top <b>Offers</b></span></p>
                                    <p class="service__item"> <i class="icon-wallet"></i><span>Money <b>Cashback</b></span></p>
                                    <p class="service__item"> <i class="icon-bubble-user"></i><span>Friendly <b>Support 24/7</b></span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ps-footer--categories">
                        @foreach (\App\Category::all()->take(11) as $key => $category)
                                        @php
                                            $brands = array();
                                        @endphp
                        <div class="categories__list"><b>{{ __($category->name) }}</b>
                            <ul class="menu--vertical">
                              @foreach($category->subCategories as $subcat)
                                <li class="menu-item"> <a href="{{route('products.category',$subcat->slug)}}">{{$subcat->name}}</a>
                                </li>
                               @endforeach
                            </ul>
                        </div>
                       @endforeach
                    <div class="row ps-footer__copyright">
                        <div class="col-12 col-lg-6 ps-footer__text">&copy; <?php echo date('Y'); ?> Naulo Bazar Marketplace. All Rights Reversed.</div>
                        <div class="col-12 col-lg-6 ps-footer__social">

                            @if ($generalsetting->facebook != null)
                            <a class="icon_social facebook" href="{{ $generalsetting->facebook }}"><i class="fa fa-facebook-f"></i></a>
                            @endif
                            @if ($generalsetting->twitter != null)
                            <a class="icon_social twitter" href="{{ $generalsetting->twitter }}"><i class="fa fa-twitter"></i></a>
                            @endif
                            @if ($generalsetting->instagram != null)
                            <a class="icon_social google" href="{{ $generalsetting->instagram }}"><i class="fa fa-instagram"></i></a>
                            @endif
                            @if ($generalsetting->youtube != null)
                            <a class="icon_social youtube" href="{{ $generalsetting->youtube }}"><i class="fa fa-youtube"></i></a>
                            @endif
                            {{-- <a class="icon_social wifi" href="#"><i class="fa fa-wifi"></i></a></div> --}}
                    </div>
                </div>
            </footer>


            <div class="ps-footer-mobile">
                <div class="menu__content">
                    <ul class="menu--footer">
                        <li class="nav-item"><a class="nav-link" href="/"><i class="icon-home3"></i><span>Home</span></a></li>
                        <li class="nav-item"><a class="nav-link footer-category" href="javascript:void(0);"><i class="icon-list"></i><span>Category</span></a></li>
                        <li class="nav-item"><a class="nav-link footer-cart" href="{{ route('cart') }}"><i class="icon-cart"></i><span>Cart</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('wishlists.index') }}"><i class="icon-heart"></i><span>Wishlist</span></a></li>
                        <li class="nav-item"><a class="nav-link" href="/account"><i class="icon-user"></i><span>Account</span></a></li>
                    </ul>
                </div>
            </div>
            <button class="btn scroll-top"><i class="icon-chevron-up"></i></button>
            <div class="ps-preloader" id="preloader">
                <div class="ps-preloader-section ps-preloader-left"></div>
                <div class="ps-preloader-section ps-preloader-right"></div>
            </div>
            <div class="ps-category--mobile">
                <div class="category__header">
                    <div class="category__title">All Category</div><span class="category__close"><i class="icon-cross"></i></span>
                </div>
                <div class="category__content">
                    <ul class="menu--mobile">
                   
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
            </div>
            <nav class="navigation--mobile">
                <div class="navigation__header">
                    <div class="navigation__select">
                      
                    </div>
                  
                  @auth
                    <div class="navigation-title">
                        <button class="close-navbar-slide"><i class="icon-arrow-left"></i></button>
                        <div><span> <i class="icon-user"></i>Hi, </span>
                          <span class="account">{{Auth::user()->name}}</span>
                          {{-- <a class="dropdown-user" href="#" id="dropdownAccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-chevron-down"></i>
                        </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownAccount">
        						<a class="dropdown-item" href="/profile"><b>My Account</b></a>
        						<a class="dropdown-item" href="{{ route('dashboard') }}">Dashboard</a>
        						<a class="dropdown-item" href="#">Account Setting</a>
        						<a class="dropdown-item" href="shopping-cart.html">Orders</a>
        						<a class="dropdown-item" href="{{ route('wishlists.index') }}">Wishlist</a>
        						<a class="dropdown-item" href="/profile">Shipping Address</a>
        						<a class="dropdown-item" href="{{ route('logout') }}">log out</a>       						
        						
        					</div> --}}
                        </div>
                    </div>
                  @else
                  
                      <div class="navigation-title">
                        <button class="close-navbar-slide"><i class="icon-arrow-left"></i></button>
                        <div><span> <i class="icon-user"></i>Hi, </span>
                          <span class="account">Please Login Or Register</span>
                          <a class="dropdown-user" href="#" id="dropdownAccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-chevron-down"></i></a>
                            <div class="dropdown-menu" aria-labelledby="dropdownAccount">
        						<a class="dropdown-item" href="{{ route('user.login') }}"><b>Login</b></a>
        						<a class="dropdown-item" href="{{ route('user.registration') }}">Register</a>
        		
        						
        					</div>
                        </div>
                    </div>
                  
                  @endauth
                  
                  
                  
                  
                </div>
                <div class="navigation__content">
                    <ul class="menu--mobile">
                        <li class="menu-item-has-children"><a href="/categories">NauloMall</a>
                        </li>
                        <li class="menu-item-has-children"><a href="categories">NauloMart</a>
                        </li>
                        <li class="menu-item-has-children"><a href="categories">eStore</a>
                        </li>
                        <li class="menu-item-has-children"><a href="categories">Flash Sale</a>
                        </li>
                        <li class="menu-item-has-children"> <a href="/brands">Brand</a>
                        </li>
                        <li class="menu-item-has-children"> <a href="{{route('seller')}}" >Our Top Venders</a>
                        </li>
                    </ul>
                    <ul class="menu--mobile">
                        <li class="daily-deals"><a href="{{ route('becomea.vendor')  }}" >Sell On Naulo Bazar</a></li>
                    </ul>
                </div>
                <div class="navigation__footer">
                    <ul class="menu--icon">
                        <li class="footer-item"><a class="footer-link" href="#"><i class="icon-history2"></i><span>Recent viewed product</span></a></li>
                        <li class="footer-item"><a class="footer-link" href="{{ route('becomea.vendor')  }}" ><i class="icon-cube"></i><span>Become a vendor</span></a></li>
                        <li class="footer-item"><a class="footer-link" href="#"><i class="icon-question-circle"></i><span>Help & Contact</span></a></li>
                        <li class="footer-item">
                          <a class="footer-link" href="tel:{{ $generalsetting->phone }}">
                            <i class="icon-telephone"></i>
                            <span>HOTLINE: <span class='text-success'>{{ $generalsetting->phone }} </span></span>
                          </a>
                      	</li>
                    </ul>
                </div>
            </nav>
