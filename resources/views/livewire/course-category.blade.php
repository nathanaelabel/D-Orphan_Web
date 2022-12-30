<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            @if (auth()->user()->tutor)
                <p class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang tersedia' }}</p>
            @else
                <p class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang ingin dipelajari' }}</p>
            @endif
        </div>
        @if (count($courseCategories) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M11.48 3.499a.562.562 0 011.04 0l2.125 5.111a.563.563 0 00.475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 00-.182.557l1.285 5.385a.562.562 0 01-.84.61l-4.725-2.885a.563.563 0 00-.586 0L6.982 20.54a.562.562 0 01-.84-.61l1.285-5.386a.562.562 0 00-.182-.557l-4.204-3.602a.563.563 0 01.321-.988l5.518-.442a.563.563 0 00.475-.345L11.48 3.5z" />
                        <title>Jumlah kategori kursus</title>
                    </svg>
                    {{ count($courseCategories) . ' kategori kursus' }}
                </span>
            </div>
        @endif
    </div>
    
    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Kategori Kursus</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Kategori Kursus" wire:model="categorySearch" />
        </div>
        
        {{-- Dropdown Sort --}}
        <select id="sort_category" name="sort_category" wire:model="categoryDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option {{ $categoryDropdownSort == 'Abjad Kategori' ? 'selected' : null }}>Abjad Kategori</option>
            <option {{ $categoryDropdownSort == 'Jumlah Kursus' ? 'selected' : null }}>Jumlah Kursus</option>
        </select>
    </div>

    {{-- Kategori --}}
    <div>
        @empty($courseCategories)
            <div class="grid gap-2 p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>{{ 'Kategori kursus tidak ditemukan' }}</p>
            </div>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($courseCategories as $item)
                    <x-kursus.card>
                        <x-slot:image>{{ $item->photo_path }}</x-slot:image>
                        <x-slot:kategori>{{ $item->name }}</x-slot:kategori>
                        <x-slot:jumlahTutor>{{ $item->courses->count() }} Kursus</x-slot:jumlahTutor>
                        <x-slot name="category_id">{{ $item->id }}</x-slot>
                        <x-slot:button>Selengkapnya</x-slot:button>
                    </x-kursus.card>
                @endforeach
            </div>
        @endempty
    </div>
</div>
