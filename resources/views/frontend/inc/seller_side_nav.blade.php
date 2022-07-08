<div class="ps-shop--sidebar">
    <div class="sidebar__category">
        <div class="sidebar__title">My Account Setting</div>
        <ul class="menu--mobile">
            <li class="category-item "> <a href="{{route('dashboard')}}" >Dashboard</a>
            </li>
            <li class="category-item "> <a href="{{ route('profile') }}">My Profile</a>
            </li>
            <li class="category-item "> <a href="{{ route('purchase_history.index') }}">Purchase History</a>
            </li>
           
            <li class="category-item"> <a href="{{ route('wishlists.index') }}">Wishlist</a>
            </li>
            <li class="category-item"> <a href="{{ route('seller.products') }}">Products</a>
            </li>
            <!--<li class="category-item "> <a href="{{ route('seller.digitalproducts') }}">Digital Products</a>-->
            <!--</li>-->
            <li class="category-item"> <a href="{{ route('customer_products.index') }}">Classified Products</a>
            </li>
            <li class="category-item"> <a href="{{route('product_bulk_upload.index')}}">Product Bulk Upload</a>
            </li>
            <li class="category-item "> <a href="{{route('orders.index') }}">Orders</a>
            </li>
             <li class="category-item "> <a href="{{route('seller.FlashDealproduct') }}">Flash Products</a>
            </li>
            <li class="category-item "> <a href="{{ route('vendor_refund_request') }}">Received Refund Request</a>
            </li>
           <li class="category-item "> <a href="{{ route('customer_refund_request') }}">Sent Refund Request</a>
            </li>
          <li class="category-item "> <a href="{{ route('reviews.seller') }}">Product Reviews</a>
            </li>
          <li class="category-item "> <a href="{{ route('conversations.index') }}">Conversations</a>
            </li>
          <li class="category-item "> <a href="{{ route('payments.index') }}">Payment History</a>
            </li>
           <li class="category-item "> <a href="{{ route('shops.index') }}">Shop Setting</a>
            </li>
           <li class="category-item "> <a href="{{ route('withdraw_requests.index') }}">Money Withdraw</a>
            </li>
           <li class="category-item "> <a href="{{ route('wallet.index') }}">My Wallet</a>
            </li>
           <li class="category-item "> <a href="{{ route('support_ticket.index') }}">Support Ticket</a>
            </li>
            <li class="category-item"> <a href="{{route('logout')}}">Log Out</a>
            </li>
        </ul>
    </div>
</div>