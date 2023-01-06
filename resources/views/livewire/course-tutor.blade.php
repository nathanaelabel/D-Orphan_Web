@section('title', 'Tutor ' . $courseCategory->name)

<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
    </x-kursus.tutor.breadcrumb>

    <div class="flex items-center justify-between">
        <div>
            @if (auth()->user()->tutor)
                <p class="text-3xl leading-10 font-bold">Tutor yang tersedia di kursus {{ $courseCategory->name }}</p>
            @else
                <p class="text-3xl leading-10 font-bold">Mulailah kursus {{ $courseCategory->name }} dengan Tutor pilihan
                    Anda</p>
            @endif
        </div>
        @if (count($courseTutors) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M11.48 3.499a.562.562 0 011.04 0l2.125 5.111a.563.563 0 00.475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 00-.182.557l1.285 5.385a.562.562 0 01-.84.61l-4.725-2.885a.563.563 0 00-.586 0L6.982 20.54a.562.562 0 01-.84-.61l1.285-5.386a.562.562 0 00-.182-.557l-4.204-3.602a.563.563 0 01.321-.988l5.518-.442a.563.563 0 00.475-.345L11.48 3.5z" />
                        <title>Jumlah Tutor {{ $courseCategory->name }}</title>
                    </svg>
                    {{ count($courseTutors) . ' Tutor' }}
                </span>
            </div>
        @endif
    </div>

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
        <select id="sort_tutor" name="sort_tutor" wire:model="tutorDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option {{ $tutorDropdownSort == 'Abjad Nama' ? 'selected' : null }}>Abjad Nama</option>
            <option {{ $tutorDropdownSort == 'Tarif Per Jam' ? 'selected' : null }}>Tarif Per Jam</option>
        </select>
    </div>

    {{-- Tutor --}}
    <div>
        @empty($courseTutors)
            <div class="grid gap-2 p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>{{ 'Tutor tidak ditemukan' }}</p>
            </div>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($courseTutors as $item)
                    <x-kursus.tutor.card>
                        <x-slot:image>{{ $item['tutor']['user']['profile_photo_path'] }}</x-slot:image>
                        <x-slot:nama>{{ $item['tutor']['user']['name'] }}</x-slot:nama>
                        <x-slot:tarif>{{ 'Rp' . number_format($item['hourly_price'], 2, ',', '.') . '/jam' }}
                        </x-slot:tarif>
                        <x-slot:lokasi>
                            {{ $item['location'] }}
                        </x-slot:lokasi>
                        <x-slot:hadirIcon>
                            @if ($item['is_online'] == 1)
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
                            @if ($item['is_online'] == 1)
                                {{ 'Daring' }}
                            @else
                                @if ($item['is_visit'] == 0)
                                    {{ 'Luring, Tidak dilaksanakan di Panti' }}
                                @else
                                    {{ 'Luring, Bisa dilaksanakan di Panti' }}
                                @endif
                            @endif
                        </x-slot:hadirTipe>
                        <x-slot:anak>{{ $item['maximum_member'] }} anak/Panti</x-slot:anak>
                        <x-slot name="course_id">{{ $item['id'] }}</x-slot>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-kursus.tutor.card>
                @endforeach
            </div>
        @endempty
    </div>
</div>
