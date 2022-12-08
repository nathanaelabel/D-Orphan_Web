@if (session('status'))
    {{ session('status') }}
@endif
<div></div>
Competition name: {{ $competitionData->name }}

Tanggal pendaftaran dimulai: {{ $competitionData->registration_start_date }}
url: {{ $competitionData->url }}
description: {{ $competitionData->desccription }}
updated_at: {{ $competitionData->updated_at }}
<div></div>
