########################TUTOR
<div></div>
///////////////////////////////////////////showcompetition
<div></div>
@if ($competitionDatas->isNotEmpty())
    @foreach ($competitionDatas as $competitionData)
        <div></div>
        {{ $loop->iteration }}.
        Competition name: {{ $competitionData->name }}
        <div></div>
        Tanggal pendaftaran dimulai: {{ $competitionData->registration_start_date }}
        <div></div>
        <a href="{{ route('mytutorcompetition.show', $competitionData->id) }}">LIHAT</a>
        <div></div>
        <a href="getmytutorcompetition/{{ $competitionData->id }}">LIST PANTI</a>
        <div></div>
    @endforeach
@else
    Tidak ada data kompetisi
@endif
<div></div>
