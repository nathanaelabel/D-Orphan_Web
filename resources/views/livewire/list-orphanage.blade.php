<div class="space-y-8">

    {{-- Title --}}
    <p class="text-3xl leading-10 font-bold">Pilih Panti Asuhan yang menjadi tujuan donasi</h3>

        {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Panti Asuhan</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Panti Asuhan" wire:model="PASearch" />
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
            <div class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>{{ 'Panti Asuhan tidak ditemukan' }}</p>
            </div>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($orphanages as $item)
                    <x-donasi.list-panti.card>
                        <x-slot:image>{{ $item->user->orphanage->photo_url }}</x-slot:image>
                        <x-slot:panti>{{ $item->name }}</x-slot:panti>
                        <x-slot:surel>{{ $item->user->email }}</x-slot:surel>
                        <x-slot:lokasi>{{ $item->user->address }}</x-slot:lokasi>
                        <x-slot:anak>{{ $item->user->orphanage->member_count . ' anak Panti' }}</x-slot:anak>
                        <x-slot name="user_id">{{ $item->user->id }}</x-slot>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-donasi.list-panti.card>
                @endforeach
            </div>
        @endif
    </div>
</div>
