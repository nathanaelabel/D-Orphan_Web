 ########################PENGURUS PA
 <div></div>
 ///////////////////////////////////////////showcourse
 <div></div>
 @if ($skillDatas)
     @foreach ($skillDatas as $skillData)
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
