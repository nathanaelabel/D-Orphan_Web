<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
    </x-kursus.tutor.breadcrumb>

    {{-- Title --}}
    <h3 class="text-3xl leading-10 font-bold">{{ 'Mulailah kursus Catur dengan Tutor pilihan Anda' }}</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <x-search-bar>
            <x-slot:placeholder>Cari Tutor</x-slot:placeholder>
        </x-search-bar>
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
        {{-- @if ($courseTutor->isEmpty())
            <h3>Belum ada tutor yang tersedia</h3>
        @else --}}
        <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
            @for ($i = 0; $i < 12; $i++)
                {{-- @foreach ($courseTutor as $item) --}}
                <a href="{{ route('detail-tutor') }}">
                    <x-kursus.tutor.card>
                        <x-slot:image>
                            https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80
                        </x-slot:image>
                        <x-slot:nama>Will Smith</x-slot:nama>
                        <x-slot:tarif>Rp50.000,00/jam</x-slot:tarif>
                        <x-slot:lokasi>Surabaya</x-slot:lokasi>
                        <x-slot:sesi>Tersedia Sesi Daring</x-slot:sesi>
                        <x-slot:anak>20 anak/Panti</x-slot:anak>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-kursus.tutor.card>
                </a>
            @endfor
            {{-- @endforeach --}}
        </div>
        {{-- @endif --}}
    </div>

    {{-- Pagination --}}
    <x-pagination></x-pagination>
</div>
