@component('mail::message')
  <p>New Order has been placed.</p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
      <td colspan="2">Naulo Bazaar</td>
   </tr>
   <tr>
      <td colspan="2"> </td>
   </tr>
   <tr>
      <td width="49%">
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
               <td>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td> </td>
                     </tr>
                     <tr>
                        <td style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:15px;">Order</td>
                     </tr>
                     <tr>
                        <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;">Order Code : <span style="font-weight:0;">{{ $order_id }}</span></td>
                     </tr>
                     <tr>
                        <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;">Order Price : <span style="font-weight:0;">{{ $order_price }}</span></td>
                     </tr>
                     <tr>
                        <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;">Shipping Address :  <span style="font-weight:0;">{{ $order_location }}</span></td>
                     </tr>
                     <tr>
                        <td> </td>
                     </tr>
                  </table>
               </td>
            </tr>
         </table>
      </td>
      <td width="51%" valign="top">
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;" align="right"></td>
            </tr>
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;"  align="right"> </td>
            </tr>
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;"  align="right"><b>Receipt Date : </b>{{ date("Y-m-d") }}</td>
            </tr>
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:15px;" align="right">Payer</td>
            </tr>
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;" align="right">{{ $order_by }}</td>
            </tr>
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;" align="right">{{ $order_phone }}</td>
            </tr>
            <tr>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;" align="right">{{ $order_email }}</td>
            </tr>
         </table>
      </td>
   </tr>
   <tr>
      <td colspan="2"> </td>
   </tr>
  <tr>
    <td colspan="2">
      <table  width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
             <td  style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:13px; border-top:1px solid #333; border-bottom:1px solid #333; border-left:1px solid #333; border-right:1px solid #333;" width="5%" height="32" align="center">SN</td>
             <td  style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:13px; border-top:1px solid #333; border-bottom:1px solid #333; border-right:1px solid #333;" width="25%" align="center">{{__('Product')}}</td> 
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:13px; border-top:1px solid #333; border-bottom:1px solid #333; border-right:1px solid #333;" width="25%" align="center">Delivery Type</td>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:13px; border-top:1px solid #333; border-bottom:1px solid #333; border-right:1px solid #333;" width="10%" align="center">Unit Price</td>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:13px; border-top:1px solid #333; border-bottom:1px solid #333; border-right:1px solid #333;" width="5%" align="center">Quantity</td>
               <td style="font-family:Verdana, Geneva, sans-serif; font-weight:600; font-size:13px; border-top:1px solid #333; border-bottom:1px solid #333; border-right:1px solid #333; border-right:1px solid #333;" width="15%" align="center">Total</td>
          </tr>
          @foreach ($order_detail as $key => $orderDetail)
          <tr>
             <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px; border-bottom:1px solid #333; border-left:1px solid #333; border-right:1px solid #333;" align="center">{{ $key+1 }}</td>
             <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px; border-bottom:1px solid #333; border-right:1px solid #333;" align="center">
                {{ $orderDetail['product']['name'] }}
             </td>
             <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px; border-bottom:1px solid #333; border-right:1px solid #333;" align="center">
                @if ($orderDetail['shipping_type'] != null && $orderDetail['shipping_type'] == 'home_delivery')
                {{ __('Home Delivery') }}
                @elseif ($orderDetail['shipping_type'] == 'pickup_point')
                @if ($orderDetail['pickup_point'] != null)
                {{ $orderDetail['pickup_point']['name'] }} ({{ __('Pickip Point') }})
                @endif
                @endif
             </td>
             <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px; border-bottom:1px solid #333; border-right:1px solid #333;" align="center">
                {{ $orderDetail['product']['unit_price'] }}
             </td>
             <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px; border-bottom:1px solid #333; border-right:1px solid #333;" align="center">
                {{ $orderDetail['quantity'] }}
             </td>
             <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px; border-bottom:1px solid #333; border-right:1px solid #333;" align="center">
                {{ $orderDetail['price'] }}
             </td>
          </tr>
          @endforeach
        
   <tr>
      <td colspan="2"> </td>
   </tr>
   <tr>
      <td style="font-family:Verdana, Geneva, sans-serif; font-weight:300; font-size:13px;" align="right" colspan="2"><b>Total : </b>Rs. {{ ($order_price) }}</td>
   </tr>
  </table>
    </td>
  </tr>
</table>
<br>
Sincerely,
<br>
Naulo Bazaar
@endcomponent