 ########################PENGURUS PA
 <div></div>
 ///////////////////////////////////////////showpaincompetition
 <div></div>
 @if ($skillDatas->isNotEmpty())
     @foreach ($listPaDatas as $listPaData)
         <div></div>
         {{ $loop->iteration }}.
         skill name: {{ $skillData->name }}
         <div></div>
         photo path: {{ $skillData->photo_path }}
         <div></div>
         jumlah tutor: {{ count($skillData->courses) }} data
     @endforeach
 @else
     Tidak ada data kursus!
 @endif
 <div></div>
