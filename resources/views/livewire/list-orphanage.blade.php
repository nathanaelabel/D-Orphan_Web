<div class="space-y-8">

    {{-- Title --}}
    <h3 class="text-3xl leading-10 font-bold">Pilih Panti Asuhan</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
       <div class="w-full relative">
        <x-search-bar>
            <x-slot:placeholder>Cari Panti Asuhan</x-slot:placeholder>
        </x-search-bar>
        <input type="text" name="search" id="search"
        class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
        placeholder="Cari Panti Asuhan" wire:model = "PASearch" />
        </div>
        {{-- Dropdown Sort --}}
        {{-- <x-donasi.list-panti.dropdown>
            <x-slot:id>sort_panti</x-slot:id>
            <x-slot:name>sort_panti</x-slot:name>
            <x-slot:option1>Abjad Nama</x-slot:option1>
        </x-donasi.list-panti.dropdown> --}}
    </div>

    {{-- Panti Asuhan --}}
    <div>
        @if ($orphanages->isEmpty())
            <h3>Data Panti Asuhan tidak tersedia</h3>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($orphanages as $item)
                    <x-donasi.list-panti.card>
                        <x-slot:image>
                            https://images.unsplash.com/photo-1621403215688-d4d8088ccbc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80
                        </x-slot:image>
                        <x-slot:panti>{{ $item->name }}</x-slot:panti>
                        <x-slot:lokasi>{{ $item->user->address }}</x-slot:lokasi>
                        <x-slot:surel>{{ $item->user->email }}</x-slot:surel>
                        <x-slot name="user_id">{{$item->user->id}}</x-slot>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-donasi.list-panti.card>
                @endforeach
            </div>
        @endif
    </div>
</div>
