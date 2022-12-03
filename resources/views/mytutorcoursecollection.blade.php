@if (session('status'))
    {{ session('status') }}
@endif
<div></div>
########################TUTOR
<div></div>
///////////////////////////////////////////showcourse
<div></div>
<a href="{{ route('mytutorcoursecollection.create') }}">TAMBAH</a>
<div></div>
@if ($courseDatas)
    @foreach ($courseDatas as $courseData)
        <div></div>
        {{ $loop->iteration }}.
        skill name: {{ $courseData->skill->name }}
        <div></div>
        total price: {{ $courseData->hourly_price + $courseData->tool_price }}
        <div></div>
        location (offline/online?):
        @if ($courseData->is_online == 0)
            Offline
        @else
            Online
        @endif
        <div></div>
        @if ($courseData->is_visit == 1)
            Visit to Panti
        @else
            Not Visit to Panti
        @endif
        <div></div>
        member max:
        {{ $courseData->maximum_member }}
        <div></div>
        updated_at: {{ $courseData->updated_at }}
        <div></div>
        <form action="{{ route('mytutorcoursecollection.destroy', $courseData->id) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit">DELETE</button>
        </form>
        <div></div>
        <a href="{{ route('mytutorcoursecollection.show', $courseData->id) }}">LIHAT</a>
        <div></div>
    @endforeach
@else
    Tidak ada data kursus!
@endif
<div></div>
