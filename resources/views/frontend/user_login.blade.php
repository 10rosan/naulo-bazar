@extends('frontend.layouts.app')

@section('content')



<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="javascript:void(0);">User Login </a></li>
            </ul>
        </div>
    </div>

<section class="section--login">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="login__box">
                    <div class="login__header">
                        <h3 class="login__login">Welcome to Naulobazar! Please login.</h3>
                    </div>
                    <div class="login__content">
                    <form action="{{ route('login') }}" method="POST" role="form">
                        @csrf
                        @if (\App\Addon::where('unique_identifier', 'otp_system')->first() != null && \App\Addon::where('unique_identifier', 'otp_system')->first()->activated)
                        <span>{{ __('Use country code before number') }}</span>
                    @endif
                        <div class="form-row">
                            <div class="col-12 col-lg-12 form-group--block">
                                @if (\App\Addon::where('unique_identifier', 'otp_system')->first() != null && \App\Addon::where('unique_identifier', 'otp_system')->first()->activated)
                                <label>Phone Number or Email: </label>
                                <input class="form-control" type="text" {{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{__('Email Or Phone')}}" name="email" id="email" required="">
                                @else
                                <input class="form-control" type="email" {{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{__('Email Or Phone')}}" name="email" id="email" required="">
                                @endif
                            </div>
                            <div class="col-12 col-lg-12 form-group--block">
                                <label>Password: </label>
                                <div class="input-group group-password">
                                    <input class="form-control" type="password" {{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="{{__('Password')}}" name="password" id="password">
                                    <div class="input-group-append">
                                        <button class="btn forgot-pass" type="button" onclick="window.location.href='{{ route('password.request') }}'">Forgot?</button>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 col-lg-12  form-group--block">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="rem0" value="">
                                    <label for="rem0">Remember Me</label>
                                </div>
                            </div>
                        </div>
                         <button class="btn btn-login" type="submit">Login</button>
                        <div class="login__conect">
                            <hr>
                            <p>Or Login with</p>
                            <hr>
                        </div>
                      @php
                     
                      @endphp
                     
                      
                        <div class="row">
                            <div class="col-12 col-lg-6">
                            
                                <a class="btn btn-social btn-facebook" href="{{url('auth/facebook/redirect')}}" type="button"> <i class="fa fa-facebook-f"></i>Facebook
                               
                              </a>
                          </div>
                          
                            <div class="col-12 col-lg-6">
                              
                                <a class="btn btn-social btn-google" href="{{url('auth/google/redirect')}}" type="button"> <i class="fa fa-google-plus"></i>Google
                            
                              </a>
                            </div>
                            <div class="clearfix"></div>
                         
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-6">
            <div class="login_big_link">
                <h3 class="login__title">New Member?</h3>
                <h3>
                    <a href="{{ route('user.registration') }}"><i class="fa fa-hand-o-right"></i> Register Here.</a>
                </h3>
            </div>
	
          @foreach($login_content as $content)
            <h3 class="login__title">{{$content->head}}</h3>
          <p class="login__description"><b> {{$content->subheader}}</b>: </p>
            <div class="login__orther">
                <p> <i class="icon-truck"></i>{{$content->body}}</p>
            </div>
          @endforeach
		
          @foreach(\App\LoginContent::where('published',2)->get() as $key => $content2)
            <div class="help-area">
                <h3> {{$content2->head}} </h3>
                <p>
                  {{$content2->subheader}}
                </p>
                <h4 class="phone-number">
                 {{$content2->body}}
                </h4>
               
                <div class="clearfix"></div>
            </div>
			@endforeach
        </div>
    </div>
  </div>
</section>


</main>



@endsection

@section('script')
    <script type="text/javascript">
        function autoFillSeller(){
            $('#email').val('seller@example.com');
            $('#password').val('123456');
        }
        function autoFillCustomer(){
            $('#email').val('customer@example.com');
            $('#password').val('123456');
        }
    </script>
@endsection
