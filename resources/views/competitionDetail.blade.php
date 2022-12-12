@if (session('status'))
    {{ session('status') }}
@endif

Competition name: {{ $compDatas->name }}
<div></div>
Registration Start Date: {{ $compDatas->registration_start_date }}
<div></div>
URL: {{ $compDatas-> url }}
<div></div>
Description: {{ $compDatas->description }}