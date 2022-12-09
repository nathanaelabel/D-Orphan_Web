########################TUTOR
<div></div>
///////////////////////////////////////////showcompetitionpa
<div></div>
@if ($competitionRecommendationDatas->isNotEmpty())
    @foreach ($competitionRecommendationDatas as $competitionRecommendationData)
        <div></div>
        {{ $loop->iteration }}.
        name pa: {{ $competitionRecommendationData->orphanage->name }}
        <div></div>
        photo pa: {{ $competitionRecommendationData->orphanage->photo_url }}
        <div></div>
        member count: {{ count($competitionRecommendationData->orphanage->orphans) }}
        <div></div>
        pengurus: {{ $competitionRecommendationData->orphanage->user->name }}
        <div></div>
        <a href="/mytutororphancrs/{{ $competitionRecommendationData->id }}">LIHAT REKOMENDASI</a>
    @endforeach
@else
    Tidak ada data panti
@endif
<div></div>
