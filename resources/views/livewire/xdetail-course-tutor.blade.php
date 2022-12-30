@section('title', 'Detail Tutor')

<div class="space-y-8">
    <x-kursus.tutor.detail-tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
        <x-slot:page3>Profil Tutor</x-slot:page3>
    </x-kursus.tutor.detail-tutor.breadcrumb>

    <p class="text-3xl leading-10 font-bold">{{ 'Detail Tutor' }}</p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-6/12">
            <img src="{{ $courseTutor->tutor->user->profile_photo_path }}" alt="Tutor"
                class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none"
                onerror="this.onerror=null;this.src='/img/placeholder.svg';">

        <div class="w-fit self-center" :value=1>
            <span hidden>{{ $course_id = $courseTutor->id }}</span>
            <div class="grid gap-4 p-4 lg:p-8">
                <p class="text-2xl leading-8 font-semibold text-gray-900">
                    {{ $courseTutor->tutor->user->name }}
                </p>
                <div class="flex gap-2">
                    <span
                        class="w-fit inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                        <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor" viewBox="0 0 8 8">
                            <circle cx="4" cy="4" r="3" />
                        </svg>
                        {{ $courseTutor->skill->name }}
                    </span>
                </div>
                <div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ 'Rp' . number_format($courseTutor->hourly_price, 2, ',', '.') . '/jam' }}</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $courseTutor->location }}</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            @if ($courseTutor->is_online == 0)
                                {{ 'Luring' }}
                            @elseif ($courseTutor->is_online == 1)
                                {{ 'Daring' }}
                            @elseif ($courseTutor->is_visit == 0)
                                {{ 'Luring' }}
                            @else
                                {{ '-' }}
                            @endif
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $courseTutor->maximum_member }} anak/Panti</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $courseTutor->tutor->user->gender }}</p>
                    </div>
                </div>

                <div>
                    <p class="text-gray-500">{{ $courseTutor->description }}</p>
                </div>

                @if (Auth::user()->user_type == 'Pengurus Panti')
                    <div>
                        <a href="{{ route('detail-reservation', $course_id) }}">
                            <x-primary-button>Reservasi Kursus</x-primary-button>
                        </a>
                    </div>

                    <div>
                        <a href="mailto:{{ $courseTutors->tutor->user->email }}">
                            <x-secondary-button>Kirim Surel</x-secondary-button>
                        </a>
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>

{{-- COURSE-MANAGE --}}

    {{-- FORM LAMA
    @if ($showForm)
        {{-- FORM --}}


    <p class="text-3xl leading-10 font-bold">{{ 'Tambah Kursus' }}</p>

    <div class="flex p-8 bg-white rounded-2xl shadow">
        <div class="w-full space-y-8">

            <form wire:submit.prevent="addData">

                {{-- <div class="space-y-8">
                        <div class="space-y-1 gap-6">
                            <x-label>
                                <x-slot:for>kategori_kursus</x-slot:for>
                                <x-slot:slot>Kategori Kursus</x-slot:slot>
                            </x-label>
                        </div>
                    </div> --}}

                <div class="space-y-4">
                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>tarif_per_jam</x-slot:for>
                            <x-slot:slot>Tarif Per Jam</x-slot:slot>
                        </x-label>
                        <div class="relative">
                            <div
                                class="absolute inset-y-0 left-0 pl-3 text-gray-700 flex items-center pointer-events-none">
                                <p>Rp</p>
                            </div>
                            <x-input class="pl-10">
                                <x-slot:type>number</x-slot:type>
                                <x-slot:name>tarif_per_jam</x-slot:name>
                                <x-slot:id>tarif_per_jam</x-slot:id>
                                <x-slot:placeholder>xxxxxx</x-slot:placeholder>
                            </x-input>
                        </div>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>lokasi</x-slot:for>
                            <x-slot:slot>Lokasi</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>lokasi</x-slot:name>
                            <x-slot:id>lokasi</x-slot:id>
                            <x-slot:placeholder>Surabaya</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>lokasi_kursus_luring</x-slot:for>
                            <x-slot:slot>Lokasi Kursus Luring</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>lokasi_kursus_luring</x-slot:name>
                            <x-slot:id>lokasi_kursus_luring</x-slot:id>
                            <x-slot:placeholder>Jl. Pahlawan No. 2B</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>batas_peserta_kursus</x-slot:for>
                            <x-slot:slot>Batas Peserta Kursus</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>number</x-slot:type>
                            <x-slot:name>batas_peserta_kursus</x-slot:name>
                            <x-slot:id>batas_peserta_kursus</x-slot:id>
                            <x-slot:placeholder>15</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>durasi_kursus</x-slot:for>
                            <x-slot:slot>Durasi Kursus</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>number</x-slot:type>
                            <x-slot:name>durasi_kursus</x-slot:name>
                            <x-slot:id>durasi_kursus</x-slot:id>
                            <x-slot:placeholder>3</x-slot:placeholder>
                        </x-input>
                    </div>
                </div>
            </form>
            <div class="grid gap-4 lg:flex">
                <x-danger-button wire:click="toggleForm">Batal
                </x-danger-button>
                <x-primary-button wire:click="addData">Tambahkan</x-primary-button>
            </div>
        </div>
    </div>
</div>
@endif --}}