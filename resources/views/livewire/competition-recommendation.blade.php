@section('title', 'Lomba')

<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            @if (auth()->user()->tutor)
                <p class="text-3xl leading-10 font-bold">Berikan rekomendasi lomba</p>
            @else
                <p class="text-3xl leading-10 font-bold">Ikuti lomba dan jadilah yang terbaik</p>
            @endif
        </div>
        @if (count($competitionRecommendations) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M16.5 18.75h-9m9 0a3 3 0 013 3h-15a3 3 0 013-3m9 0v-3.375c0-.621-.503-1.125-1.125-1.125h-.871M7.5 18.75v-3.375c0-.621.504-1.125 1.125-1.125h.872m5.007 0H9.497m5.007 0a7.454 7.454 0 01-.982-3.172M9.497 14.25a7.454 7.454 0 00.981-3.172M5.25 4.236c-.982.143-1.954.317-2.916.52A6.003 6.003 0 007.73 9.728M5.25 4.236V4.5c0 2.108.966 3.99 2.48 5.228M5.25 4.236V2.721C7.456 2.41 9.71 2.25 12 2.25c2.291 0 4.545.16 6.75.47v1.516M7.73 9.728a6.726 6.726 0 002.748 1.35m8.272-6.842V4.5c0 2.108-.966 3.99-2.48 5.228m2.48-5.492a46.32 46.32 0 012.916.52 6.003 6.003 0 01-5.395 4.972m0 0a6.726 6.726 0 01-2.749 1.35m0 0a6.772 6.772 0 01-3.044 0" />
                        <title>Jumlah rekomendasi lomba</title>
                    </svg>
                    {{ count($competitionRecommendations) . ' rekomendasi lomba' }}
                </span>
            </div>
        @endif
    </div>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Lomba</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Lomba" wire:model="competitionSearch" />
        </div>

        {{-- Dropdown Sort --}}
        <select id="sort_competition" name="sort_competition" wire:model="competitionDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option {{ $competitionDropdownSort == 'Abjad Nama' ? 'selected' : null }}>Abjad Nama</option>
            <option {{ $competitionDropdownSort == 'Tanggal Registrasi' ? 'selected' : null }}>Tanggal Registrasi
            </option>
        </select>
    </div>

    {{-- Lomba --}}
    <div>
        @if (!count($competitionRecommendations) > 0)
            <div class="grid gap-2 p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>
                    @if (Auth::user()->user_type == 'Pengurus Panti')
                        Rekomendasi lomba tidak ditemukan
                    @else
                        Belum ada perlombaan yang tersedia
                    @endif
                </p>
            </div>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($competitionRecommendations as $item)
                    <x-lomba.card>

                        {{-- Kalau tutor dari tabel competition dan panti dari tabel competition recommendation --}}

                        <x-slot name="competition_recommendation_id">{{ $item->id }}</x-slot>
                        <x-slot:image>
                            @if (@auth()->user()->orphanage)
                                {{ $item->competition->photo_url }}
                            @else
                                {{ $item->photo_url }}
                            @endif
                        </x-slot:image>
                        <x-slot:nama>
                            @if (@auth()->user()->orphanage)
                                {{ $item->competition->name }}
                            @else
                                {{ $item->name }}
                            @endif
                        </x-slot:nama>
                        <x-slot:tanggal_registrasi_dimulai>
                            @if (@auth()->user()->orphanage)
                                {{ date_format(date_create($item->competition->registration_start_date), 'd/m/Y') }}
                            @else
                                {{ date_format(date_create($item->registration_start_date), 'd/m/Y') }}
                            @endif
                        </x-slot:tanggal_registrasi_dimulai>
                        <x-slot:jam_registrasi_dimulai>
                            @if (@auth()->user()->orphanage)
                                {{ date_format(date_create($item->competition->registration_start_hour), 'H:i') . ' WIB' }}
                            @else
                                {{ date_format(date_create($item->registration_start_hour), 'H:i') . ' WIB' }}
                            @endif
                        </x-slot:jam_registrasi_dimulai>
                        <x-slot:jenjang>
                            @if (@auth()->user()->orphanage)
                                {{ $item->competition->level }}
                            @else
                                {{ $item->level }}
                            @endif
                        </x-slot:jenjang>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-lomba.card>
                @endforeach
            </div>
        @endif
    </div>

    {{-- Pagination --}}
    {{-- <x-pagination></x-pagination> --}}
</div>
