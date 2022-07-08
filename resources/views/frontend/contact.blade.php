@extends('frontend.layouts.app')

@section('content') 
@php
$generalsetting = \App\GeneralSetting::first();

@endphp
<main class="no-main">
        <div class="ps-breadcrumb">
            <div class="container">
                <ul class="ps-breadcrumb__list">
                    <li class="active"><a href="/">Home</a></li>
                    <li><a href="javascript:void(0);">Contact Us</a></li>
                </ul>
            </div>
        </div>
        <section class="section--contact">
            <div class="container">
                <h2 class="page__title">Contact Us</h2>
                <div class="contact__content">
                    <div class="row">
                        <div class="col-12 col-lg-7">
                            <div class="row">
                                <div class="col-12">
                                    <div class="contact__map">
                                      
                                      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1715.3336203299493!2d85.3459583264291!3d27.742178974112264!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb1950f4b0734f%3A0x294cc2ff55af6105!2sMandikhatar%20Microstop!5e0!3m2!1sen!2snp!4v1651054874642!5m2!1sen!2snp" width="600" height="450" ></iframe>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <h3 class="contact__title">Contact Info</h3>
                                    <div class="contact__info">
                                        <p> <span>Hotline Free: </span>(7:00 - 21:30)</p>
                                        <p class="contact__info__phone"><a href="tel:{{ $generalsetting->phone }}">{{ $generalsetting->phone }}</a></p>
                                        <p class="contact__info__phone"><a href="tel:+977-9843766625">+977-9843766625</a></p>
                                        <p> <span>Head office: </span> {{$generalsetting->address}}</p>
                                        <p> <span>Email us: </span><a href="/cdn-cgi/l/email-protection" class="__cf_email__">Support@Naulobazar.com.np</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <h3 class="contact__title">Follow Us</h3>
                                    <div class="contact__social">
                                      <a class="icon_social facebook" href="{{$generalsetting->facebook}}"><i class="fa fa-facebook-f"></i></a>
                                      <a class="icon_social twitter" href="{{$generalsetting->twitter}}"><i class="fa fa-twitter"></i></a>
                                      <a class="icon_social google" href="{{$generalsetting->google_plus}}"><i class="fa fa-google-plus"></i></a>
                                      <a class="icon_social youtube" href="{{$generalsetting->youtube}}"><i class="fa fa-youtube"></i></a>
                                      <a class="icon_social wifi" href="{{$generalsetting->instagram}}"><i class="fa fa-wifi"></i></a></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-5">
                            <form>
                                <div class="contact__form">
                                    <h3 class="contact__title">Contact Form</h3>
                                    <p>please send us a message by filling out the form below and we will get back with you shortly.</p>
                                    <div class="form-row">
                                        <div class="col-12 form-group--block">
                                            <label>Name: <span>*</span></label>
                                            <input class="form-control" type="text" required>
                                        </div>
                                        <div class="col-12 form-group--block">
                                            <label>Email: <span>*</span></label>
                                            <input class="form-control" type="text" required>
                                        </div>
                                        <div class="col-12 form-group--block">
                                            <label>Subject (optional): </label>
                                            <input class="form-control" type="text" required>
                                        </div>
                                        <div class="col-12 form-group--block">
                                            <label>Message: <span>*</span></label>
                                            <textarea class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn ps-button contact__send">Send Message</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
  @endsection
   