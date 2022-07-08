
<section class="ps-component ps-component--category">
                    <div class="container">
                        <div class="component__header">
                            <h3 class="component__title">Shop By Category</h3>
                            <a class="component__view d-flex align-items-center" href="{{ route('categories.all') }}">
                                <span class="mr-1">
                                   More Categories
                                </span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                              </svg>
                            </a>
                        </div>
                        <div class="component__content" >
                            <div class="owl-carousel"  data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="6" data-owl-item-xs="3" data-owl-item-sm="3" data-owl-item-md="5" data-owl-item-lg="8" data-owl-duration="1000" data-owl-mousedrag="on">

                                @foreach (\App\Category::where('featured', 1)->get()->take(7) as $key => $category)
                                {{-- @if ($key == 0) class="active" @endif --}}
                                <div  class="ps-category__item" ><a href="{{ route('products.category', $category->slug) }}"><img class="ps-categories__thumbnail" src="{{ asset($category->banner) }}" data-src="{{ asset($category->banner) }}"alt ="{{ __($category->name) }}"></a><a class="ps-categories__name" href="{{ route('products.category', $category->slug) }}">{{ __($category->name) }} </a></div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </section>


