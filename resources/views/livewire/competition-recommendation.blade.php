<div class="space-y-8">
    {{-- Title --}}
    @if (Auth::user()->user_type == 'Tutor')
        <p class="text-3xl leading-10 font-bold">Berikan rekomendasi lomba ke anak-anak Panti Asuhan</p>
    @else
        <p class="text-3xl leading-10 font-bold">Ikuti lomba dan jadilah yang terbaik</p>
    @endif

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
        @if (!$competitionRecommendations)
            <div class="grid gap-2 p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>Rekomendasi lomba tidak ditemukan</p>
            </div>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($competitionRecommendations as $item)
                    <x-lomba.card>
                        <x-slot name="competition_recommendation_id">{{ $item->id }}</x-slot>
                        <x-slot:image>{{ $item->competition->photo_url }}</x-slot:image>
                        <x-slot:nama>{{ $item->competition->name }}</x-slot:nama>
                        <x-slot:tanggal_registrasi_dimulai>
                            {{ date_format(date_create($item->competition->registration_start_date), 'l, d F Y') }}
                        </x-slot:tanggal_registrasi_dimulai>
                        <x-slot:jam_registrasi_dimulai>
                            {{ date_format(date_create($item->competition->registration_start_hour), 'H:i A') }}
                        </x-slot:jam_registrasi_dimulai>
                        <x-slot:jenjang>{{ $item->competition->jenjang }}</x-slot:jenjang>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-lomba.card>
                @endforeach
            </div>
        @endif
    </div>

    {{-- Pagination --}}
    {{-- <x-pagination></x-pagination> --}}
</div>
