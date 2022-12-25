@section('title', 'Tutor')

<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
    </x-kursus.tutor.breadcrumb>

    {{-- Title --}}
    <p class="text-3xl leading-10 font-bold">
        @if (auth()->user()->orphanage)
            Mulailah kursus {{ $courseCategory->name }} dengan Tutor pilihan Anda
        @else
            Tutor yang tersedia di kursus {{ $courseCategory->name }}
        @endif
    </p>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Tutor</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Tutor" wire:model="tutorSearch" />
        </div>
        {{-- Dropdown Sort --}}
        <x-kursus.dropdown>
            <x-slot:id>sort_tutor</x-slot:id>
            <x-slot:name>sort_category</x-slot:name>
            <x-slot:option1>Abjad Nama</x-slot:option1>
            <x-slot:option2>Tarif Per Jam</x-slot:option2>
        </x-kursus.dropdown>
    </div>

    {{-- Tutor --}}
    <div>
        @if ($courseTutors->isEmpty())
            <div class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>{{ 'Tutor tidak ditemukan' }}</p>
            @else
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                    @foreach ($courseTutors as $item)
                        <x-kursus.tutor.card>
                            <x-slot:image>{{ $item->tutor->user->profile_photo_path }}</x-slot:image>
                            <x-slot:nama>{{ $item->tutor->user->name }}</x-slot:nama>
                            <x-slot:tarif>{{ 'Rp' . number_format($item->hourly_price, 2, ',', '.') . '/jam' }}
                            </x-slot:tarif>
                            <x-slot:lokasi>
                                @if ($item->location == null)
                                    {{ '-' }}
                                @else
                                    {{ $item->location }}
                                @endif
                            </x-slot:lokasi>
                            <x-slot:hadirIcon>
                                @if ($item->is_online == 1)
                                    M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75
                                    6.75
                                    0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98
                                    0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375
                                    0a.375.375
                                    0 11-.75 0 .375.375 0 01.75 0z
                                @else
                                    M3 3l8.735 8.735m0 0a.374.374 0 11.53.53m-.53-.53l.53.53m0 0L21 21M14.652 9.348a3.75
                                    3.75 0 010 5.304m2.121-7.425a6.75 6.75 0 010 9.546m2.121-11.667c3.808 3.807 3.808
                                    9.98 0
                                    13.788m-9.546-4.242a3.733 3.733 0 01-1.06-2.122m-1.061 4.243a6.75 6.75 0
                                    01-1.625-6.929m-.496 9.05c-3.068-3.067-3.664-7.67-1.79-11.334M12 12h.008v.008H12V12z
                                @endif
                            </x-slot:hadirIcon>
                            <x-slot:hadirTipe>
                                @if ($item->is_online == 0)
                                    {{ 'Luring' }}
                                @elseif ($item->is_online == 1)
                                    {{ 'Daring' }}
                                @elseif ($item->is_visit == 0)
                                    {{ 'Luring' }}
                                @else
                                    {{ '-' }}
                                @endif
                            </x-slot:hadirTipe>
                            <x-slot:anak>{{ $item->maximum_member }}&nbsp;anak/Panti</x-slot:anak>
                            <x-slot name="course_id">{{ $item->id }}</x-slot>
                            <x-slot:button>Selengkapnya</x-slot:button>
                        </x-kursus.tutor.card>
                    @endforeach
                </div>
        @endif
    </div>
</div>
