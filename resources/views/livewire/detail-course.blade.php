<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.detail-kursus.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>-</x-slot:page2>
        <x-slot:page3>Detail Kursus</x-slot:page3>
    </x-kursus.detail-kursus.breadcrumb>

    <div class="grid lg:flex gap-8">
        <div class="grid gap-4 w-full lg:w-6/12">
            {{-- Title --}}
            <p class="text-3xl leading-10 font-bold">Tutor</h3>
            {{-- Course --}}
            <x-kursus.detail-kursus.card :value=1>
                <x-slot name="course_id">{{ $course->id }}</x-slot>
                <x-slot:image>{{ $course->tutor->user->profile_photo_path }}</x-slot:image>
                <x-slot:nama>{{ $course->tutor->user->name }}</x-slot:nama>
                <x-slot:kategori>{{ $course->skill->name }}</x-slot:kategori>
                <x-slot:tarif>{{ 'Rp' . number_format($course->hourly_price, 2, ',', '.') . '/jam' }}
                </x-slot:tarif>
                <x-slot:lokasi>{{ $course->location }}</x-slot:lokasi>
                <x-slot:sesi>
                    @if ($course->is_online == 1)
                        Tersedia Sesi Daring
                    @else
                        Hanya Sesi Luring
                    @endif
                </x-slot:sesi>
                <x-slot:anak>{{ $course->maximum_member }} anak/Panti</x-slot:anak>
                <x-slot:jenis_kelamin>{{ $course->tutor->user->gender }}</x-slot:jenis_kelamin>
                <x-slot:button>Reservasi Kursus</x-slot:button>
            </x-kursus.detail-kursus.card>
        </div>

        <div class="w-fit flex-col space-y-4">
            {{-- Description --}}
            <p class="text-3xl leading-10 font-bold">Detail Kursus</h3>
            <p class="text-lg leading-8 text-gray-500">{{ $course->description }}</p>
        </div>
    </div>
</div>
