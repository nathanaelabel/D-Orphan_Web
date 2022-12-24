<div class="space-y-8">
    @if (auth()->user()->tutor)
        {{-- Title --}}
        <h3 class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus' }}</h3>
        {{-- Tabs --}}
        <div class="flex justify-center">
            <nav class="text-center bg-blue-100 rounded space-x-4 px-2 py-4" aria-label="Tabs">
                <!-- Current: "bg-gray-100 text-gray-700", Default: "text-gray-500 hover:text-gray-700" -->
                <a wire:click='setTab("eksplor")'
                    class="cursor-pointer px-3 py-2 font-semibold rounded {{ $activeTabCourseCategory == 'eksplor' ? 'bg-blue-500 text-white' : 'text-blue-700' }}"
                    aria-current="page">Eksplor</a>

                <a wire:click='setTab("kelola")'
                    class="cursor-pointer px-3 py-2 font-semibold rounded {{ $activeTabCourseCategory == 'kelola' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Kelola</a>
            </nav>
        </div>
    @else
        {{-- Title --}}
        <h3 class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang ingin dipelajari' }}</h3>
    @endif

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Kursus</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Kursus" wire:model="categorySearch" />
        </div>
        {{-- Dropdown Sort --}}
        <x-kursus.dropdown>
            <x-slot:id>sort_category</x-slot:id>
            <x-slot:name>sort_category</x-slot:name>
            <x-slot:option1>Abjad Kategori</x-slot:option1>
            <x-slot:option2>Jumlah Tutor</x-slot:option2>
        </x-kursus.dropdown>
    </div>

    @if ((auth()->user()->tutor && $activeTabCourseCategory == 'eksplor') || auth()->user()->orphanage)
        {{-- Kategori --}}
        <div>
            @if ($courseCategories->isEmpty())
                <div class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
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
            @endif
        </div>
</div>
@endif

@if (auth()->user()->tutor && $activeTabCourseCategory == 'kelola')
    <div>
        @if ($coursesTutor->count())
            <div class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-24 h-24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                </svg>
                <p>{{ 'Belum ada kursus yang disediakan' }}</p>
            </div>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($coursesTutor as $item)
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque porro maxime sunt eius modi!
                        Dolore itaque nostrum enim veniam, dignissimos illum sunt distinctio, neque architecto
                        accusamus, culpa nobis voluptatum ex.</p>
                @endforeach
            </div>
        @endif
    </div>
@endif
