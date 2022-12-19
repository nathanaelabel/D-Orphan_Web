<div class="space-y-8">
    {{-- Title --}}
    <h3 class="text-3xl leading-10 font-bold">{{ 'Ikuti lomba dan jadilah yang terbaik' }}</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <x-search-bar>
            <x-slot:placeholder>Cari Lomba</x-slot:placeholder>
        </x-search-bar>
    </div>

    {{-- Kategori --}}
    <div>
        {{-- @if ($competitionRecommendation->isEmpty())
            <h3>Belum ada kategori lomba yang tersedia</h3>
        @else --}}
        <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">

            {{-- @foreach ($competitionRecommendation as $item) --}}
            @if (Auth::user()->user_type == 'Pengurus Panti')
                @foreach ($competitionRecommendation as $item)
                    <x-lomba.card>

                        <x-slot:image>
                            https://images.unsplash.com/photo-1584448141569-69f342da535c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=441&q=80
                        </x-slot:image>
                        <x-slot:nama>{{$item->competition->title}}</x-slot:nama>
                        <x-slot:kategori>Atletik</x-slot:kategori>
                        <x-slot:tanggal>06/08/2022</x-slot:tanggal>
                        <x-slot:jam>07:30 s.d. 14:30</x-slot:jam>
                        <x-slot:lokasi>Surabaya</x-slot:lokasi>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-lomba.card>
                @endforeach
            @else
                @foreach ($competitions as $item)
                    <x-lomba.card>

                        <x-slot:image>
                            https://images.unsplash.com/photo-1584448141569-69f342da535c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=441&q=80
                        </x-slot:image>
                        <x-slot:nama>{{$item->name}}</x-slot:nama>
                        <x-slot:kategori>{{$item->category}}</x-slot:kategori>
                        <x-slot:tanggal>06/08/2022</x-slot:tanggal>
                        <x-slot:jam>07:30 s.d. 14:30</x-slot:jam>
                        <x-slot:lokasi>Surabaya</x-slot:lokasi>
                        <x-slot:primaryButton>Tambah Peserta</x-slot:primaryButton>
                        <x-slot:secondaryButton>Ubah Lomba</x-slot:secondaryButton>
                        <x-slot:tertiaryButton>Hapus Lomba</x-slot:tertiaryButton>
                    </x-lomba.card>
                @endforeach

            @endif
            {{-- @endforeach --}}
        </div>
        {{-- @endif --}}
    </div>

    {{-- Pagination --}}
    <x-pagination></x-pagination>
</div>
