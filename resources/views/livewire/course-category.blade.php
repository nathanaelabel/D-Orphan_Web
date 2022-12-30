<div class="space-y-8">
    @if (auth()->user()->tutor)
        {{-- Title --}}
        <p class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang tersedia' }}</p>
    @else
        {{-- Title --}}
        <p class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang ingin dipelajari' }}</p>
    @endif

    <div class="flex gap-2 items-center">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
            class="w-6 h-6 text-gray-700">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
            <title>Jumlah Kategori Kursus</title>
        </svg>

        <p class="text-lg leading-8 text-gray-700">
            @empty($courseCategories)
                0
            @else
                {{ $courseCategories->count() }}
            @endempty
            Kategori Kursus</p>
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
