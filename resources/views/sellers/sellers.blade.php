@extends('frontend.layouts.app')

@section('content')
<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="javascript:void(0);">Store List</a></li>
            </ul>
        </div>
    </div>


<section class="section--storeList">
    <div class="container">
        <h2 class="page__title">Store List</h2>
        <div class="storeList__search row">
            <div class="col-12 col-lg-4">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for vendor...">
                    <div class="input-group-append"><i class="icon-magnifier"></i></div>
                </div>
            </div>
        </div>
        <div class="storeList__content">
            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="storeList__item">
                        <div class="item__header"><img src="assets/img/store_list_1.jpg" alt="alt" />
                            <div class="item__content">
                                <h5 class="item__title">Enter Western Mart </h5>
                                <div class="item__rating">
                                    <select class="rating-stars">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3" selected="selected">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                                <div class="item__street">Bu.Na.Pa-14, Kapan Road</div>
                                <div class="item__address">44600, Kathmandu, Nepal</div>
                                <div class="item__phone"> <i class="fa fa-phone"></i>(+977) 9810099062</div>
                            </div>
                        </div>
                        <div class="item__footer"><a class="item__store" href="vendor-store.html">Visit Store</a>
                            <div class="item__avatar">
                                <div class="avatar"><img src="assets/img/store_list_logo1.jpg" alt="alt" /></div>
                            </div>
                        </div>
                    </div>
                </div>
           
           
            
            </div>
        </div>
    </div>
</section>


</main>
@endsection