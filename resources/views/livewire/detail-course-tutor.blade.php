<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.detail-tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
        <x-slot:page3>Profil Tutor</x-slot:page3>
    </x-kursus.tutor.detail-tutor.breadcrumb>

    <div class="grid lg:flex gap-8">
        <div class="grid gap-4 w-full lg:w-6/12">
            {{-- Title --}}
            <p class="text-3xl leading-10 font-bold">{{ 'Profil Tutor' }}</h3>
            {{-- Tutor --}}
            <x-kursus.tutor.detail-tutor.card :value=1>
                <x-slot name="course_id">{{ $courseTutor->id }}</x-slot>
                <x-slot:image>{{ $courseTutor->tutor->user->profile_photo_path }}</x-slot:image>
                <x-slot:nama>{{ $courseTutor->tutor->user->name }}</x-slot:nama>
                <x-slot:kategori>{{ $courseTutor->skill->name }}</x-slot:kategori>
                <x-slot:tarif>{{ 'Rp' . number_format($courseTutor->hourly_price, 2, ',', '.') . '/jam' }}
                </x-slot:tarif>
                <x-slot:lokasi>{{ $courseTutor->location }}</x-slot:lokasi>
                <x-slot:sesi>
                    @if ($courseTutor->is_online == 1)
                        Tersedia Sesi Daring
                    @else
                        Hanya Sesi Luring
                    @endif
                </x-slot:sesi>
                <x-slot:anak>{{ $courseTutor->maximum_member }} anak/Panti</x-slot:anak>
                <x-slot:jenis_kelamin>{{ $courseTutor->tutor->user->gender }}</x-slot:jenis_kelamin>
                <x-slot:button>Reservasi Kursus</x-slot:button>
            </x-kursus.tutor.detail-tutor.card>
        </div>

        <div class="w-fit flex-col space-y-4">
            {{-- Description --}}
            <p class="text-3xl leading-10 font-bold">{{ 'Tentang Tutor' }}</h3>
            <p class="text-lg leading-8 text-gray-500">{{ $courseTutor->description }}</p>
        </div>
    </div>
</div>
