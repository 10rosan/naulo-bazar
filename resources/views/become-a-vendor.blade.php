

@extends('frontend.layouts.app')

@section('content')

@php
$data = DB::table('becomeavendor')->first();
$story = DB::table('testimonial')->where('status','1')->get();
@endphp
<style>
    @media only screen and (max-width: 600px) {
        .banner--block .banner__title {
            display: none;
        }
        .banner--block .banner__subtitle {
            display:none;
        }
        .banner--block .banner__content {
            position: relative;
        }

</style>
<main class="no-main">
        <section class="section--become">
            <div class="banner--block"><img class="banner-img desktop-only" src="{{asset('img/'.$data->image)}}" alt="image">
                <div class="banner__content">
                    <div class="banner__box">
                        <div class="banner__title">{{ $data->h1 }}</div>
                        <div class="banner__subtitle">{{ $data->h2 }}</div><a class="ps-button banner__link" href="{{$data->url}}">Start selling to Naulobazar today!</a>
                    </div>
                </div>
            </div>
            <div class="become__service">
                <div class="container">
                    <h6 class="service__title">{{ $data->about1 }}</h6>
                    <div class="row">
                        <div class="col-6 col-lg-3 service__item">
                            <div class="service__icon"><img src="public/assets/img/chart.png" alt></div>
                            <div class="service__name">{{ $data->f1text }}</div>
                            <div class="service__des">{{ $data->f1subtext }}</div>
                        </div>
                        <div class="col-6 col-lg-3 service__item">
                            <div class="service__icon"><img src="public/assets/img/delivery.png" alt></div>
                            <div class="service__name">{{ $data->f2text }}</div>
                            <div class="service__des">{{ $data->f2subtext }}</div>
                        </div>
                        <div class="col-6 col-lg-3 service__item">
                            <div class="service__icon"><img src="public/assets/img/monthly.png" alt></div>
                            <div class="service__name">{{ $data->f3text }}</div>
                            <div class="service__des">{{ $data->f3subtext }}</div>
                        </div>
                        <div class="col-6 col-lg-3 service__item">
                            <div class="service__icon"><img src="public/assets/img/support.png" alt></div>
                            <div class="service__name">{{ $data->f4text }}</div>
                            <div class="service__des">{{ $data->f4subtext }}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="become__vender">
                <div class="container">
                    <div class="vender__header">
                        <h3 class="become__title">{{ $data->about2h }}</h3>
                        <p>{{ $data->about2 }}</p>

                    </div>
                    <div class="vender__content">
                        <div class="row m-0">
                            <div class="col-6 col-lg-4 vender__item">
                                <div class="vender__icon"><i class="icon-group-work"></i></div>
                                <div class="vender__item__content">
                                    <div class="vender__number">{{ $data->af1 }}</div>
                                    <p>{{ $data->afs1 }}</p>
                                </div>
                            </div>
                            <div class="col-6 col-lg-4 vender__item">
                                <div class="vender__icon"><i class="icon-store"></i></div>
                                <div class="vender__item__content">
                                    <div class="vender__number">{{ $data->af2 }}</div>
                                    <p>{{ $data->afs2 }}</p>
                                </div>
                            </div>
                            <div class="col-6 col-lg-4 vender__item">
                                <div class="vender__icon"><i class="icon-receipt"></i></div>
                                <div class="vender__item__content">
                                    <div class="vender__number">{{ $data->af3 }}</div>
                                    <p>{{ $data->afs3 }}</p>
                                </div>
                            </div>
                            <div class="col-6 col-lg-4 vender__item">
                                <div class="vender__icon"><i class="icon-users2"></i></div>
                                <div class="vender__item__content">
                                    <div class="vender__number">{{ $data->af4 }}</div>
                                    <p>{{ $data->afs4 }}</p>
                                </div>
                            </div>
                            <div class="col-6 col-lg-4 vender__item">
                                <div class="vender__icon"><i class="icon-chart-growth"></i></div>
                                <div class="vender__item__content">
                                    <div class="vender__number">{{ $data->af5 }}</div>
                                    <p>{{ $data->afs5 }}</p>
                                </div>
                            </div>
                            <div class="col-6 col-lg-4 vender__item">
                                <div class="vender__icon"><i class="icon-diamond4"></i></div>
                                <div class="vender__item__content">
                                    <div class="vender__number">{{ $data->af6 }}</div>
                                    <p>{{ $data->afs6 }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="become__stories">
                <div class="container">
                    <div class="stories__header">
                        <h3 class="become__title">Success Stories</h3>
                        <p>Every member of the Naulobazar team knows that this is more than a job, this mission is essential to our survival because agritech has presented us with a unique opportunity and the possibility to achieve global food security.</p>
                    </div>
                    <div class="stories__content">
                        <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="2" data-owl-item-lg="4" data-owl-item-xl="4" data-owl-duration="1000" data-owl-mousedrag="on">

                            @foreach( $story as $a=>$datas)
                            <div class="customer__item"><img src="{{ asset('img/'.$datas->image) }}" alt="alt" />
                                <div class="customer__name">{{ $datas->name }}</div>
                                <div class="customer__position">{!! $datas->title !!}</div>
                                <div class="customer__message">{{ $datas->about }}</div>
                            </div>
                            @endforeach



                        </div>
                    </div>
                </div>
            </div>
            <div class="become__questions">
                <div class="container">
                    <div class="questions__header">
                        <h3 class="become__title">Frequently Asked Question.</h3>
                        <p>Here are some common questions about selling on Naulobazar. For more question,
                            <u class="text-success">Please contact us</u>
                        </p>
                    </div>
                    <div class="questions__content">
                        <div class="questions__collapse">
                            <div class="accordion" id="accordionQuestion">
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <button class="btn btn-block" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">How do fees work on Naulobazar?<i class="icon-chevron-up"></i></button>
                                    </div>
                                    <div class="collapse show" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordionQuestion">
                                        <div class="card-body">It's easy to set up a shop on Naulobazar. Create an Martfury account (if you don't already have one), set your shop location and currency, choose a shop name, create a listing, set a payment method (how you want to be paid), and finally set a billing method (how you want to pay your Naulobazar fees).</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingTwo">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">What do I need to do create a shop?<i class="icon-chevron-up"></i></button>
                                    </div>
                                    <div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordionQuestion">
                                        <div class="card-body">It's easy to set up a shop on Naulobazar. Create an Martfury account (if you don't already have one), set your shop location and currency, choose a shop name, create a listing, set a payment method (how you want to be paid), and finally set a billing method (how you want to pay your Naulobazar fees).</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingThree">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">How do I get paid?<i class="icon-chevron-up"></i></button>
                                    </div>
                                    <div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#accordionQuestion">
                                        <div class="card-body">It's easy to set up a shop on Naulobazar. Create an Martfury account (if you don't already have one), set your shop location and currency, choose a shop name, create a listing, set a payment method (how you want to be paid), and finally set a billing method (how you want to pay your Naulobazar fees).</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingFour">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">Do I need a credit or debit card to create a shop?<i class="icon-chevron-up"></i></button>
                                    </div>
                                    <div class="collapse" id="collapseFour" aria-labelledby="headingFour" data-parent="#accordionQuestion">
                                        <div class="card-body">It's easy to set up a shop on Naulobazar. Create an Martfury account (if you don't already have one), set your shop location and currency, choose a shop name, create a listing, set a payment method (how you want to be paid), and finally set a billing method (how you want to pay your Naulobazar fees).</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingFive">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">What can I sell on Naulobazar?<i class="icon-chevron-up"></i></button>
                                    </div>
                                    <div class="collapse" id="collapseFive" aria-labelledby="headingFive" data-parent="#accordionQuestion">
                                        <div class="card-body">It's easy to set up a shop on Naulobazar. Create an Martfury account (if you don't already have one), set your shop location and currency, choose a shop name, create a listing, set a payment method (how you want to be paid), and finally set a billing method (how you want to pay your Naulobazar fees).</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="become__footer">
                <div class="container">
                    <h3 class="become__title">Millions of shoppers are waiting to visit your own store.</h3><a class="btn ps-button" href="shops/create">Start selling to Naulobazar today!</a>
                </div>
            </div>
        </section>
    </main>


    @endsection
