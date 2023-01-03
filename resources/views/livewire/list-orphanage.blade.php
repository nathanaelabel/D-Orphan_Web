<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Pilih Panti Asuhan yang ingin dituju' }}</p>
        </div>
        @if (count($orphanages) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25" />
                        <title>Jumlah Panti Asuhan</title>
                    </svg>
                    {{ count($orphanages) . ' Panti Asuhan' }}
                </span>
            </div>
        @endif
    </div>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Panti Asuhan</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Panti Asuhan" wire:model="PASearch" />
        </div>

        {{-- Dropdown Sort --}}
        <select id="sort_orphanage" name="sort_orphanage" wire:model="orphanageDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option {{ $orphanageDropdownSort == 'Abjad Nama' ? 'selected' : null }}>Abjad Nama</option>
            <option {{ $orphanageDropdownSort == 'Jumlah Anak Panti' ? 'selected' : null }}>Jumlah Anak Panti</option>
        </select>

    </div>

    {{-- Panti Asuhan --}}
    <div>
        @if ($orphanages->isEmpty())
            <div class="grid gap-2 p-2 place-items-center">
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
                    <x-donasi.list-user.card>
                        <x-slot:image>{{ $item->user->orphanage->photo_url }}</x-slot:image>
                        <x-slot:panti>{{ $item->name }}</x-slot:panti>
                        <x-slot:member_sum>
                            @if (count($item->orphans) > 0)
                                {{ count($item->orphans) }}
                            @else
                                0
                            @endif Anak Panti
                        </x-slot:member_sum>
                        <x-slot:alamat>{{ $item->user->address }}</x-slot:alamat>
                        <x-slot:anak>  @if (count($item->orphans) > 0)
                                {{ count($item->orphans) }}
                            @else
                                0
                            @endif Anak Panti</x-slot:anak>
                        <x-slot name="user_id">{{ $item->user->id }}</x-slot>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-donasi.list-user.card>
                @endforeach
            </div>
        @endif
    </div>
</div>
