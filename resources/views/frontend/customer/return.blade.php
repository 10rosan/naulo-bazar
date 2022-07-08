@extends('frontend.layouts.app')

@section('content')

<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="javascript:void(0);">My Returns</a></li>
            </ul>
        </div>
    </div>

    <section class="section--become">

        <h2 class="page__title">My Returns</h2>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-3">
                     @include('frontend.inc.customer_side_nav');
                    </div>
                    <div class="col-12 col-lg-9">
                        <div class="product_tbl">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Order ID #</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Returned Date</th>
                                        <th scope="col">Manage</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                      
                                    </tr>
                                    
                                    
                                        
                                </tbody>
                            </table>
                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div> 
    </section>
</main>

@endsection