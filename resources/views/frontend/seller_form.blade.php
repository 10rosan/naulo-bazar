@extends('frontend.layouts.app')

@section('content')
	<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="javascript:void(0);">Vendor Registration</a></li>
            </ul>
        </div>
    </div>

<section class="section--registration">
    <div class="container">
        <h2 class="page__title">Vendor Registration</h2>
        <p class="page__subtitle">Get started by just filling out one simple form</p>
        <form method="post" action=""  enctype="multipart/form-data">
            <div class="registration__content">
                <div class="row ">
                    <div class="col-md-8 offset-md-2">
                        <div class="registration__info">
                            <h3 class="registration__title">Account Information</h3>
                            <form  action="{{ route('shops.store') }}" method="POST" enctype="multipart/form-data">
                              @csrf
                            @if (!Auth::check())  
                              <div class="form-row">
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Full name: <span>*</span></label>
                                        <input type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name') }}" placeholder="{{ __('Name') }}" name="name">
                                    </div>
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Email:<span>*</span></label>
                                        <input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{ __('Email') }}" name="email">
                                        
                                    </div>
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Password<span>*</span></label>
                                        <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="{{ __('Password') }}" name="password">
                                    </div>
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Confirm Password: <span>*</span></label>
                                       <input type="password" class="form-control" placeholder="{{ __('Confirm Password') }}" name="password_confirmation">
                                    </div>
                                @endif
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Shop Name:</label>
                                        <input type="text" class="form-control mb-3" placeholder="{{__('Shop Name')}}" name="name" required>
                                    </div>
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Logo: <span>*</span></label>
                                         <input type="file" name="logo" id="file-2" class="form-control mb-3" data-multiple-caption="{count} files selected" accept="image/*" />
                                          
                                            
                                    </div>
                                    
                             
                                    <div class="col-12 col-lg-12 form-group--block">
                                        <label>Address:</label>
                                        <input type="text" class="form-control mb-3" placeholder="{{__('Address')}}" name="address" required>
                                    </div>
                                   <button type="submit" class="btn ps-button">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                 
                  
                </div>
            </div>
        </form>
    </div>
</section>


</main>
@endsection
