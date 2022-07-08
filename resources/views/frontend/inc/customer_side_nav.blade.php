<div class="ps-shop--sidebar">
    <div class="sidebar__category">
        <div class="sidebar__title">My Account Setting</div>
        <ul class="menu--mobile">
            <li class="category-item {{ (request()->is('customer/dashboard')) ? 'active' : '' }}"> <a href="{{route('dashboard')}}" >Dashboard</a>
            </li>
            <li class="category-item {{ (request()->is('customer/profile')) ? 'active' : '' }}"> <a href="{{ route('profile') }}">My Profile</a>
            </li>
            <li class="category-item {{ (request()->is('customer/address')) ? 'active' : '' }}"> <a href="{{route('profile')}}">My Address Book</a>
            </li>
            <li class="category-item "> <a href="{{route('customer.order')}}">My Order</a>
            </li>
            <li class="category-item"> <a href="{{route('customer.return')}}">My Returns</a>
            </li>
            <li class="category-item"> <a href="{{route('customer.cancel')}}">My Cancellations</a>
            </li>
            <li class="category-item {{ (request()->is('customer/wishlist')) ? 'active' : '' }}"> <a href="{{route('wishlists.index')}}">My Wishlist</a>
            </li>
            <li class="category-item {{ (request()->is('customer/change/password')) ? 'active' : '' }}"> <a href="{{ route('profile') }}">Change Password</a>
            </li>
           
            <li class="category-item"> <a href="{{route('logout')}}">Log Out</a>
            </li>
        </ul>
    </div>
</div>