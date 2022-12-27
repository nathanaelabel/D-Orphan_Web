@section('title', 'Reservasi Kursus')

<x-app-layout>
    <div>
        <livewire:detail-course-reservation course_id="{{request()->get('course_id')}}"/>
    </div>
</x-app-layout>
