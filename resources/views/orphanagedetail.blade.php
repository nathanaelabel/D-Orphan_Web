@if (session('status'))
    {{ session('status') }}
@endif

orphanage name: {{ $paDatas->name }}
<div></div>
photo path: {{ $paDatas->photo_url }}
<div></div>
jumlah member: {{ $paDatas->member_count }}
<div></div>
description: {{ $paDatas->description }}
<div></div>
pengurus panti: {{$paDatas->user->name}}
