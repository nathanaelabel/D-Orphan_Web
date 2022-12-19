<div class="space-y-8">

    {{-- Title --}}
    <h3 class="text-3xl leading-10 font-bold">Kunjungi Panti Asuhan yang ingin dituju</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <x-search-bar>
            <x-slot:placeholder>Cari Panti Asuhan</x-slot:placeholder>
        </x-search-bar>
        {{-- Dropdown Sort --}}
        {{-- <x-donasi.list-panti.dropdown>
            <x-slot:id>sort_panti</x-slot:id>
            <x-slot:name>sort_panti</x-slot:name>
            <x-slot:option1>Abjad Nama</x-slot:option1>
        </x-donasi.list-panti.dropdown> --}}
    </div>

    {{-- Panti Asuhan --}}
    <div>
        {{-- @if ($listOrphanage->isEmpty())
            <h3>Belum ada panti asuhan yang tersedia</h3>
        @else --}}
        <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {{-- @foreach ($listOrphanage as $item) --}}
                    <x-donasi.list-panti.card>
                        <x-slot:image>
                            https://images.unsplash.com/photo-1621403215688-d4d8088ccbc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80
                        </x-slot:image>
                        <x-slot:panti>Sinar Bangsa</x-slot:panti>
                        <x-slot:lokasi>Jl. Pahlawan No. 2B</x-slot:lokasi>
                        <x-slot:surel>sinarbangsa@gmail.com</x-slot:surel>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-donasi.list-panti.card>
            {{-- @endforeach --}}
        </div>
        {{-- @endif --}}
    </div>
</div>
