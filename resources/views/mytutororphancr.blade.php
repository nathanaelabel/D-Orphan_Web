@if (session('status'))
    {{ session('status') }}
@endif
<div></div>
########################TUTOR
<div></div>
///////////////////////////////////////////showorphansinrecommendation
<div></div>
<div></div>
@if ($orphanCrDatas->isNotEmpty())
    @foreach ($orphanCrDatas as $orphanCrData)
        <div></div>
        {{ $loop->iteration }}.
        orphan name: {{ $orphanCrData->orphan->name }}
        <div></div>
        description: {{ $orphanCrData->description }}
        <div></div>
    @endforeach
@else
    Tidak ada data anak PA!
@endif
<div></div>
