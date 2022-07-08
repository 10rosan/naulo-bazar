@component('mail::message')
        Hello Admin,  {{-- use double space for line break --}}
        New Shop has been registered into Naulo Bazaar.
        <br>Name : **{{$name}}**
        <br>Address : **{{$address}}**
        <br>Click below to visit store
        @component('mail::button', ['url' => $id])
            View Store
        @endcomponent
        Sincerely,
        Naulo Bazaar



@endcomponent
