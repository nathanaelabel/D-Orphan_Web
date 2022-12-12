@if ($paDatas->isNotEmpty())
    @foreach ($paDatas as $paData)
        <div></div>
         {{ $loop->iteration }}.
         orphanage name: {{ $paData->name }}
         <div></div>
         photo path: {{ $paData->photo_url }}
         <div></div>
         jumlah member: {{ $paData->member_count }}
         <div></div>
         description: {{ $paData->description }}
         <div></div>
         pengurus panti: {{$paData->user->name}}
    @endforeach
@else
    Tidak ada data!!!
@endif