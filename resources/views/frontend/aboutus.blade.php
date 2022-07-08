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
                <li><a href="javascript:void(0);">About Us</a></li>
            </ul>
        </div>
    </div>
    <section class="section--about">
        <!-- <div class="banner--block">
          <img class="banner-img" src="assets/img/banner-about.jpg" alt>
      </div> -->
        <div class="container">
            <div class="about__farmart">
                <div class="about__header">
                    <h3 class="about__title">About Naulobazar</h3>
                    <p class="about__subtilte">
                        @php
                            $about = \App\Page::where('slug','about-us')->first();
                            echo $about->content;
                        @endphp
                        <!-- The Naulobazar Market is an events center ofering the charm of a vintage barn with the accommodations of a fresh built space. Featuring Bride & Groom quarters, restrooms, and a warming kitchen for outside caterers, we are prepared for all of your event needs. -->
                    </p>
                    <!-- <p class="about__des">We are breaking ground on The Naulobazar Market in May 2020 and are anticipating a Grand Opening in Fall 2020. The Farmhouse Barn land is available for weddings and events before the Grand Opening.</p> -->
                </div>
                <!-- <div class="about__number">
                    <div class="about__number-block">
                        <div class="number">1.124</div>
                        <div class="description">farmers empowered</div>
                    </div>
                    <div class="about__number-block">
                        <div class="number">685</div>
                        <div class="description">acres cultivated</div>
                    </div>
                    <div class="about__number-block">
                        <div class="number">300+</div>
                        <div class="description">chicken reared</div>
                    </div>
                    <div class="about__number-block">
                        <div class="number">2.2132</div>
                        <div class="description">farm sponsorships</div>
                    </div>
                    <div class="about__number-block">
                        <div class="number">35</div>
                        <div class="description">farm followers</div>
                    </div>
                </div> -->
                <div class="row about__service">
                    <div class="col-12 col-lg-3">
                        <div class="about__service-block">
                            <div class="service__icon"><i class="icon-man-woman"></i></div>
                            <h6 class="service__title">Humility</h6>
                            <p class="about__des">In achieving success, we can never underestimate the value of our personnel</p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-3">
                        <div class="about__service-block">
                            <div class="service__icon"><i class="icon-star-half"></i></div>
                            <h6 class="service__title">Excellence</h6>
                            <p class="about__des">We embrace excellence in order to create better ways of doing the things we do.</p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-3">
                        <div class="about__service-block">
                            <div class="service__icon"><i class="icon-heart-pulse"></i></div>
                            <h6 class="service__title">Integrity</h6>
                            <p class="about__des">At Naulobazar we do not only comply with regulations, good business practices.</p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-3">
                        <div class="about__service-block">
                            <div class="service__icon"><i class="icon-landscape"></i></div>
                            <h6 class="service__title">Hunger</h6>
                            <p class="about__des">Our people have a 'Hunger for More' attitude which can drive us to eradicate 'Hunger for All.'</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="about__story">
            <div class="container">
                <div class="about__header">
                    <h3 class="about__title">The Story.</h3>
                    <p class="about__des">Since launching in 2009, Naulobazar has empowered over 11,000 small scale-farmers across worldwide. We are committed to expanding our reach in order to continue to empower local farmers, positively impact their lives and their families while boosting food production and sustainability.</p>
                </div>
                <div class="about__steps">
                    <div class="steps--block">
                        <div class="tab-content">
                            <div class="tab-pane active" role="tabpanel" id="story-1">
                                <div class="steps__item content-1">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar1.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2014</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="story-2">
                                <div class="steps__item content-2">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar7.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2015</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="story-3">
                                <div class="steps__item content-3">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar8.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2016</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="story-4">
                                <div class="steps__item content-4">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar2.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2017</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="story-5">
                                <div class="steps__item content-5">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar3.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2018</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="story-6">
                                <div class="steps__item content-6">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar4.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2019</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="story-7">
                                <div class="steps__item content-7">
                                    <button class="btn prev-step"> <i class="icon-chevron-left"></i></button>
                                    <button class="btn next-step"><i class="icon-chevron-right"></i></button>
                                    <div class="steps__icon"><img src="assets/img/avatar5.jpg" alt="alt" />
                                    </div>
                                    <div class="steps__content">
                                        <div class="steps__title">May 24, 2020</div>
                                        <p class="steps__des">Sumeet Tumelo and Niraj Carbry come up with for the first time by the idea for Organic Market and get lauched as online marketplace merchant in Califorlia, United States.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="steps__action">
                            <div class="steps-tabs">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="step-1 active" role="presentation"><a href="#story-1" data-toggle="tab" aria-controls="story-1" role="tab" aria-expanded="true" data-step="1" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2014</span></a></li>
                                    <li class="step-2" role="presentation"><a href="#story-2" data-toggle="tab" aria-controls="story-2" role="tab" aria-expanded="true" data-step="2" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2015</span></a></li>
                                    <li class="step-3" role="presentation"><a href="#story-3" data-toggle="tab" aria-controls="story-3" role="tab" aria-expanded="true" data-step="3" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2016</span></a></li>
                                    <li class="step-4" role="presentation"><a href="#story-4" data-toggle="tab" aria-controls="story-4" role="tab" aria-expanded="true" data-step="4" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2017</span></a></li>
                                    <li class="step-5" role="presentation"><a href="#story-5" data-toggle="tab" aria-controls="story-5" role="tab" aria-expanded="true" data-step="5" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2018</span></a></li>
                                    <li class="step-6" role="presentation"><a href="#story-6" data-toggle="tab" aria-controls="story-6" role="tab" aria-expanded="true" data-step="6" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2019</span></a></li>
                                    <li class="step-7" role="presentation"><a href="#story-7" data-toggle="tab" aria-controls="story-7" role="tab" aria-expanded="true" data-step="7" data-no-step="data-no-step"><span class="round-tab"><span class="round"></span></span><span class="name-step">2020</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- <div class="about__media">
            <div class="container">
                <div class="about__header">
                    <h3 class="about__title">Media & Awards.</h3>
                    <p class="about__des">Welcome to The Drum Online Media Awards, which is celebrating it's 10th year of being the global platform for recognising worldwide content and commercial solutions that are original, clever and thought provoking. If you are a media owner, regardless of scale, then these perfect awards for you.</p>
                    <div class="about__quote"><i class="icon-quote-open"></i></div>
                    <div class="about__message">I would like to personally thank you for your outstanding product. Naulobazar is both attractive and highly adaptable. I made back the purchase price in just 48 hours! Since I invested in Naulobazar I made over 10,00,000 Rupees profits.</div>
                    <div class="about__sign"><b>Ganesh</b>- iFarm CEO</div>
                </div>
            </div>
        </div> -->
    </section>
</main>

    @endsection