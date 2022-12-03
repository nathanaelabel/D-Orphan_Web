@if (session('status'))
    {{ session('status') }}
@endif
<div></div>
skill name: {{ $courseData->skill->name }}
<div></div>
desccription: {{ $courseData->description }}
<div></div>
location: {{ $courseData->location }}
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
hourly price: {{ $courseData->hourly_price }}
<div></div>
tool price: {{ $courseData->tool_price }}
<div></div>
total price: {{ $courseData->hourly_price + $courseData->tool_price }}
<div></div>
tool description: {{ $courseData->tool_description }}
<div></div>
updated_at: {{ $courseData->updated_at }}
<div></div>
<a href="{{ route('mytutorcoursecollection.edit', $courseData->id) }}">EDIT</a>
