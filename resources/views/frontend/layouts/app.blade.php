<!DOCTYPE html>
@if(\App\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
<html dir="rtl" lang="en">
@else
<html lang="en">
@endif
<head>

@php
    $seosetting = \App\SeoSetting::first();
@endphp

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow">
<title>@yield('title', config('app.name', 'Laravel'))</title>
<meta name="description" content="@yield('meta_description', $seosetting->description)" />
<meta name="keywords" content="@yield('meta_keywords', $seosetting->keyword)">
<meta name="author" content="{{ $seosetting->author }}">
<meta name="sitemap_link" content="{{ $seosetting->sitemap_link }}">

@yield('meta')

@if(!isset($detailedProduct))
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ config('app.name', 'Laravel') }}">
    <meta itemprop="description" content="{{ $seosetting->description }}">
    <meta itemprop="image" content="{{ asset(\App\GeneralSetting::first()->logo) }}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="{{ config('app.name', 'Laravel') }}">
    <meta name="twitter:description" content="{{ $seosetting->description }}">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="{{ asset(\App\GeneralSetting::first()->logo) }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ config('app.name', 'Laravel') }}" />
    <meta property="og:type" content="Ecommerce Site" />
    <meta property="og:url" content="{{ route('home') }}" />
    <meta property="og:image" content="{{ asset(\App\GeneralSetting::first()->logo) }}" />
    <meta property="og:description" content="{{ $seosetting->description }}" />
    <meta property="og:site_name" content="{{ env('APP_NAME') }}" />
@endif

<!-- Favicon -->
<link type="image/x-icon" href="{{ asset(\App\GeneralSetting::first()->favicon) }}" rel="shortcut icon" />


<!-- Icons -->
<link rel="stylesheet" href="{{ asset('frontend/css/font-awesome.min.css') }}" type="text/css" media="none" onload="if(media!='all')media='all'">
<link rel="stylesheet" href="{{ asset('frontend/css/line-awesome.min.css') }}" type="text/css" media="none" onload="if(media!='all')media='all'">


<!-- Global style (main) -->


 <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700&amp;amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/fonts/linearicons/font/demo-files/demo.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('nouislider/nouislider.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('assets/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('assets/plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('assets/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('assets/plugins/owl-carousel/assets/owl.carousel.min.css') }}" rel="stylesheet" media="all">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/plugins/slick/slick.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('assets/plugins/lightgallery/dist/css/lightgallery.min.css') }}" rel="stylesheet" media="all">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}" rel="stylesheet" media="all">
  <style>
    .btn-base-1{
      background: #ff7200!important;
    }
    .modal-header{
      position:relative;
    }
     .ps-product__name{
        display: inline-block!important;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        width: 225px;
    }
    .ps-product__type{
          display: inline-block!important;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        width: 225px;
    }
    .ps-product--standard{
    	overflow:hidden;
    }
    @media only screen and (max-width: 600px) {
      .ps-product__name, .ps-product__type{
         width: 165px;
      }
      .storeList__content .owl-nav .owl-next,.storeList__content .owl-nav .owl-prev{
        display:none;
      }
      .recommendations__content .owl-dots{
          display: none;
      }
      .storeList__content .owl-dots{
          display: none;
      }
    }
    body{
    	overflow-x:hidden;
    }
    /* .ps-home--dark .ps-component--selling .ps-product--standard:hover{
      position: absolute;
    } */
    .jfu-NauloBazar-sell .ps-sell__product {
        margin: 5px;
    }
    .ps-product--standard .ps-product__thumbnail{
      width: 100% !important;
    }
  </style>


<link type="text/css" href="{{ asset('frontend/css/bootstrap-tagsinput.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('frontend/css/jodit.min.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('frontend/css/sweetalert2.min.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('frontend/css/slick.css') }}" rel="stylesheet" media="all">
<link type="text/css" href="{{ asset('frontend/css/xzoom.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('frontend/css/jssocials.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('frontend/css/jssocials-theme-flat.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('frontend/css/intlTelInput.min.css') }}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
<link type="text/css" href="{{ asset('css/spectrum.css')}}" rel="stylesheet" media="none" onload="if(media!='all')media='all'">
 <link type="text/css" href="{{ asset('frontend/css/active-shop.css') }}" rel="stylesheet" media="all">


<link type="text/css" href="{{ asset('frontend/css/main.css') }}" rel="stylesheet" media="all">

  <link type="text/css" href="{{ asset('frontend/css/custom-style.css') }}" rel="stylesheet" media="all">



@if(\App\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
     <!-- RTL -->
    {{-- <link type="text/css" href="{{ asset('frontend/css/active.rtl.css') }}" rel="stylesheet" media="all"> --}}
@endif



@if (\App\BusinessSetting::where('type', 'google_analytics')->first()->value == 1)
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ env('TRACKING_ID') }}"></script>

    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', '{{ env('TRACKING_ID') }}');
    </script>
@endif

@if (\App\BusinessSetting::where('type', 'facebook_pixel')->first()->value == 1)
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', {{ env('FACEBOOK_PIXEL_ID') }});
  fbq('track', 'PageView');
</script>
<noscript>
  <img height="1" width="1" style="display:none"
       src="https://www.facebook.com/tr?id={{ env('FACEBOOK_PIXEL_ID') }}/&ev=PageView&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->
@endif
</head>
<body>
        <div>


         @include('frontend.inc.nav')
       @yield('content')
        @include('frontend.inc.footer')
        @include('frontend.partials.modal')



           <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
           <script src="{{ asset('assets/plugins/jquery.min.js') }}"></script>
            <script src="{{ asset('assets/plugins/popper.min.js') }}"></script>
            <script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
            <script src="{{ asset('assets/plugins/owl-carousel/owl.carousel.min.js') }}"></script>
            <script src="{{ asset('assets/plugins/jquery.matchheight-min.js') }}"></script>
            <script src="{{ asset('assets/plugins/jquery-bar-rating/dist/jquery.barrating.min.js') }}"></script>
            <script src="{{ asset('assets/plugins/select2/dist/js/select2.min.js') }}"></script>
            <script src="{{ asset('assets/plugins/slick/slick.js') }}"></script>
            <script src="{{ asset('assets/plugins/lightgallery/dist/js/lightgallery-all.min.js') }}"></script>
            <!-- custom code-->
            <script src="{{ asset('frontend/js/xzoom.min.js') }}"></script>
            <script src="{{ asset('frontend/js/vendor/popper.min.js') }}"></script>
            <script src="{{ asset('frontend/js/vendor/bootstrap.min.js') }}"></script>
            {{-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> --}}
            <!-- Plugins: Sorted A-Z -->
            <script src="{{ asset('frontend/js/jquery.countdown.min.js') }}"></script>
            <script src="{{ asset('frontend/js/select2.min.js') }}"></script>
            <script src="{{ asset('frontend/js/nouislider.min.js') }}"></script>
            <script src="{{ asset('frontend/js/sweetalert2.min.js') }}"></script>
          	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
            <script src="{{ asset('frontend/js/slick.min.js') }}"></script>
            <script src="{{ asset('frontend/js/jssocials.min.js') }}"></script>
            <script src="{{ asset('frontend/js/bootstrap-tagsinput.min.js') }}"></script>
            <script src="{{ asset('frontend/js/jodit.min.js') }}"></script>
            <script src="{{ asset('frontend/js/xzoom.min.js') }}"></script>
            <script src="{{ asset('frontend/js/fb-script.js') }}"></script>
            <script src="{{ asset('frontend/js/lazysizes.min.js') }}"></script>
            <script src="{{ asset('frontend/js/intlTelInput.min.js') }}"></script>

            <!-- App JS -->
            <script src="{{ asset('frontend/js/active-shop.js') }}"></script>
            <script src="{{ asset('nouislider/nouislider.min.js') }}"></script>
            <script src="{{ asset('frontend/js/main.js') }}"></script>

            <script src="{{ asset('assets/js/main.js') }}"></script>
            <!--<script src="{{ asset('/js/matchheight.js') }}"></script>-->


          <script src="{{ asset('frontend/js/vendor/popper.min.js') }}"></script>
<script src="{{ asset('frontend/js/vendor/bootstrap.min.js') }}"></script>

          <script>
          	//$('.storeList__item').matchHeight();
          </script>


            <script>
                function showFrontendAlert(type, message){
                    if(type == 'danger'){
                        type = 'error';
                    }
                    swal({
                        position: 'top-end',
                        type: type,
                        title: message,
                        showConfirmButton: false,
                        timer: 3000
                    });
                }
            </script>

            @foreach (session('flash_notification', collect())->toArray() as $message)
                <script>
                    showFrontendAlert('{{ $message['level'] }}', '{{ $message['message'] }}');
                </script>
            @endforeach
        </div>
        <div class="modal fade" id="addToCart">
            <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
                <div class="modal-content position-relative">
                    <div class="c-preloader">
                        <i class="fa fa-spin fa-spinner"></i>
                    </div>
                    <button type="button" class="close absolute-close-btn" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div id="addToCart-modal-body">

                    </div>
                </div>
            </div>
        </div>
            <script>

                $(document).ready(function() {
                    $('.category-nav-element').each(function(i, el) {
                        $(el).on('mouseover', function(){
                            if(!$(el).find('.sub-cat-menu').hasClass('loaded')){
                                $.post('{{ route('category.elements') }}', {_token: '{{ csrf_token()}}', id:$(el).data('id')}, function(data){
                                    $(el).find('.sub-cat-menu').addClass('loaded').html(data);
                                });
                            }
                        });
                    });
                    if ($('#lang-change').length > 0) {
                        $('#lang-change .dropdown-item a').each(function() {
                            $(this).on('click', function(e){
                                e.preventDefault();
                                var $this = $(this);
                                var locale = $this.data('flag');
                                $.post('{{ route('language.change') }}',{_token:'{{ csrf_token() }}', locale:locale}, function(data){
                                    location.reload();
                                });

                            });
                        });
                    }

                    if ($('#currency-change').length > 0) {
                        $('#currency-change .dropdown-item a').each(function() {
                            $(this).on('click', function(e){
                                e.preventDefault();
                                var $this = $(this);
                                var currency_code = $this.data('currency');
                                $.post('{{ route('currency.change') }}',{_token:'{{ csrf_token() }}', currency_code:currency_code}, function(data){
                                    location.reload();
                                });

                            });
                        });
                    }
                });

                $('#search').on('keyup', function(){
                    search();
                });

                $('#search').on('focus', function(){
                    search();
                });

                function search(){
                    var search = $('#search').val();
                    if(search.length > 0){
                        $('body').addClass("typed-search-box-shown");

                        $('.typed-search-box').removeClass('d-none');
                        $('.search-preloader').removeClass('d-none');
                        $.post('{{ route('search.ajax') }}', { _token: '{{ @csrf_token() }}', search:search}, function(data){
                            if(data == '0'){
                                // $('.typed-search-box').addClass('d-none');
                                $('#search-content').html(null);
                                $('.typed-search-box .search-nothing').removeClass('d-none').html('Sorry, nothing found for <strong>"'+search+'"</strong>');
                                $('.search-preloader').addClass('d-none');

                            }
                            else{
                                $('.typed-search-box .search-nothing').addClass('d-none').html(null);
                                $('#search-content').html(data);
                                $('.search-preloader').addClass('d-none');
                            }
                        });
                    }
                    else {
                        $('.typed-search-box').addClass('d-none');
                        $('body').removeClass("typed-search-box-shown");
                    }
                }

                function updateNavCart(){
                    $.post('{{ route('cart.nav_cart') }}', {_token:'{{ csrf_token() }}'}, function(data){
                        $('#cart_items').html(data);
                    });
                }

                function removeFromCart(key){
                    $.post('{{ route('cart.removeFromCart') }}', {_token:'{{ csrf_token() }}', key:key}, function(data){
                        updateNavCart();
                        $('#cart-summary').html(data);
                        showFrontendAlert('success', 'Item has been removed from cart');
                        $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())-1);
                             setTimeout(function(){
                               $('.cart-total').text($('.subtotal-amount').text());
                             }, 1000);
                    });
                }

                function addToCompare(id){
                    $.post('{{ route('compare.addToCompare') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
                        $('#compare').html(data);
                        showFrontendAlert('success', 'Item has been added to compare list');
                        $('#compare_items_sidenav').html(parseInt($('#compare_items_sidenav').html())+1);
                    });
                }

                function addToWishList(id){
                    @if (Auth::check() && (Auth::user()->user_type == 'customer' || Auth::user()->user_type == 'seller'))
                        $.post('{{ route('wishlists.store') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
                            if(data != 0){
                                $('#wishlist').html(data);
                                showFrontendAlert('success', 'Item has been added to wishlist');
                            }
                            else{
                                showFrontendAlert('warning', 'Please login first');
                            }
                        });
                    @else
                        showFrontendAlert('warning', 'Please login first');
                    @endif
                }

                function showAddToCartModal(id){
                    if(!$('#modal-size').hasClass('modal-lg')){
                        $('#modal-size').addClass('modal-lg');
                    }
                    $('#addToCart-modal-body').html(null);
                    $('#addToCart').modal();
                    $('.c-preloader').show();
                    $.post('{{ route('cart.showCartModal') }}', {_token:'{{ csrf_token() }}', id:id}, function(data){
                        $('.c-preloader').hide();
                        $('#addToCart-modal-body').html(data);
                         $('.xzoom, .xzoom-gallery').xzoom({
                            Xoffset: 20,
                            bg: true,
                            tint: '#000',
                            defaultScale: -1
                        });
                        getVariantPrice();
                    });
                }

                $('#option-choice-form input').on('change', function(){
                    getVariantPrice();
                });

                function getVariantPrice(){
                    if($('#option-choice-form input[name=quantity]').val() > 0 && checkAddToCartValidity()){
                        $.ajax({
                           type:"POST",
                           url: '{{ route('products.variant_price') }}',
                           data: $('#option-choice-form').serializeArray(),
                           success: function(data){
                               $('#option-choice-form #chosen_price_div').removeClass('d-none');
                               $('#option-choice-form #chosen_price_div #chosen_price').html(data.price);
                               $('#available-quantity').html(data.quantity);
                               $('.input-number').prop('max', data.quantity);
                               //console.log(data.quantity);
                               if(parseInt(data.quantity) < 1 && data.digital  != 1){
                                   $('.buy-now').hide();
                                   $('.add-to-cart').hide();
                               }
                               else{
                                   $('.buy-now').show();
                                   $('.add-to-cart').show();
                               }
                           }
                       });
                    }
                }

                function checkAddToCartValidity(){
                    var names = {};
                    $('#option-choice-form input:radio').each(function() { // find unique names
                          names[$(this).attr('name')] = true;
                    });
                    var count = 0;
                    $.each(names, function() { // then count them
                          count++;
                    });

                    if($('#option-choice-form input:radio:checked').length == count){
                        return true;
                    }

                    return false;
                }

                function addToCart(){

                    if(checkAddToCartValidity()) {
                        $('#addToCart').modal();
                        $('.c-preloader').show();
                        $.ajax({
                           type:"POST",
                           url: '{{ route('cart.addToCart') }}',
                           data: $('#option-choice-form').serializeArray(),
                           success: function(data){
                               $('#addToCart-modal-body').html(null);
                               $('.c-preloader').hide();
                               $('#modal-size').removeClass('modal-lg');
                               $('#addToCart-modal-body').html(data);
                               updateNavCart();
                               $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())+1);
                             setTimeout(function(){
                               $('.cart-total').text($('.subtotal-amount').text());
                             }, 1000);

                           }
                       });
                    }
                    else{
                        showFrontendAlert('warning', 'Please choose all the options');
                    }
                }

                function buyNow(){
                    if(checkAddToCartValidity()) {
                        $('#addToCart').modal();
                        $('.c-preloader').show();
                        $.ajax({
                           type:"POST",
                           url: '{{ route('cart.addToCart') }}',
                           data: $('#option-choice-form').serializeArray(),
                           success: function(data){
                               //$('#addToCart-modal-body').html(null);
                               //$('.c-preloader').hide();
                               //$('#modal-size').removeClass('modal-lg');
                               //$('#addToCart-modal-body').html(data);
                               updateNavCart();
                               $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())+1);
                               window.location.replace("{{ route('cart') }}");
                           }
                       });
                    }
                    else{
                        showFrontendAlert('warning', 'Please choose all the options');
                    }
                }

                function show_purchase_history_details(order_id)
                {
                    $('#order-details-modal-body').html(null);

                    if(!$('#modal-size').hasClass('modal-lg')){
                        $('#modal-size').addClass('modal-lg');
                    }

                    $.post('{{ route('purchase_history.details') }}', { _token : '{{ @csrf_token() }}', order_id : order_id}, function(data){
                        $('#order-details-modal-body').html(data);
                        $('#order_details').modal();
                        $('.c-preloader').hide();
                    });
                }

                function show_order_details(order_id)
                {
                    $('#order-details-modal-body').html(null);

                    if(!$('#modal-size').hasClass('modal-lg')){
                        $('#modal-size').addClass('modal-lg');
                    }

                    $.post('{{ route('orders.details') }}', { _token : '{{ @csrf_token() }}', order_id : order_id}, function(data){
                        $('#order-details-modal-body').html(data);
                        $('#order_details').modal();
                        $('.c-preloader').hide();
                    });
                }

                     function cartQuantityInitialize(){

                    $('.btn-number').click(function(e) {
                        getVariantPrice();
                        e.stopImmediatePropagation();
                        fieldName = $(this).attr('data-field');

                        type1 = $(this).attr('data-type');
                        var input = $("input[name='" + fieldName + "']");
                        var currentVal1 = parseInt(input.val());
                        var maxValue = parseInt($('#available-quantity').text());
                        // console.log(maxValue);
                        if (!isNaN(currentVal1)) {
                            if (type1 == 'minus') {

                                if (currentVal1 > input.attr('min')) {
                                    input.val(currentVal1 - 1);
                                    getVariantPrice();
                                    $(".btn-number").data('type','minus').removeAttr('disabled')
                            // $(".btn-number[data-type='minus']").removeAttr('disabled')
                                }
                                if (parseInt(input.val()) == input.attr('min')) {
                                    $(this).attr('disabled', true);
                                }

                            } else if (type1 == 'plus') {

                                if (currentVal1 < maxValue) {
                                    input.val(currentVal1 + 1);
                                    // $(".btn-number[data-type='plus']").removeAttr('disabled')
                                    $(".btn-number").data('type','plus').removeAttr('disabled')
                                    getVariantPrice();
                                }
                                if (parseInt(input.val()) == maxValue) {
                                    $(this).attr('disabled', true);
                                }

                            }
                        } else {
                            input.val(0);
                        }
                    });
                    $('.input-number').focusin(function() {
                        $(this).data('oldValue', $(this).val());
                    });

                    $('.input-number').change(function() {
                        console.log('input change');

                        minValue = parseInt($(this).attr('min'));
                        maxValue = parseInt($(this).attr('max'));
                        valueCurrent = parseInt($(this).val());

                        name = $(this).attr('name');
                        if (valueCurrent >= minValue) {
                            $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
                        } else {
                            alert('Sorry, the minimum value was reached');
                            $(this).val($(this).data('oldValue'));
                        }
                        if (valueCurrent <= maxValue) {
                            $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
                        } else {
                            alert('Sorry, the maximum value was reached');
                            $(this).val($(this).data('oldValue'));
                        }


                    });
                    $(".input-number").keydown(function(e) {
                        // Allow: backspace, delete, tab, escape, enter and .
                        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                            // Allow: Ctrl+A
                            (e.keyCode == 65 && e.ctrlKey === true) ||
                            // Allow: home, end, left, right
                            (e.keyCode >= 35 && e.keyCode <= 39)) {
                            // let it happen, don't do anything
                            return;
                        }
                        // Ensure that it is a number and stop the keypress
                        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                            e.preventDefault();
                        }
                    });
                }
                 function imageInputInitialize(){
                     $('.custom-input-file').each(function() {
                         var $input = $(this),
                             $label = $input.next('label'),
                             labelVal = $label.html();

                         $input.on('change', function(e) {
                             var fileName = '';

                             if (this.files && this.files.length > 1)
                                 fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                             else if (e.target.value)
                                 fileName = e.target.value.split('\\').pop();

                             if (fileName)
                                 $label.find('span').html(fileName);
                             else
                                 $label.html(labelVal);
                         });

                         // Firefox bug fix
                         $input
                             .on('focus', function() {
                                 $input.addClass('has-focus');
                             })
                             .on('blur', function() {
                                 $input.removeClass('has-focus');
                             });
                     });
                 }

            </script>

            @yield('script')



        </body>
        </html>
