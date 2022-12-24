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
        <input type="text" name="search" id="search"
        class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
        placeholder="Cari Kursus" wire:model = "categorySearch" />
        </div>
        {{-- Dropdown Sort --}}
        <x-kursus.dropdown>
            <x-slot:id>sort_category</x-slot:id>
            <x-slot:name>sort_category</x-slot:name>
            <x-slot:option1>Abjad Kategori</x-slot:option1>
            <x-slot:option2>Jumlah Tutor</x-slot:option2>
        </x-kursus.dropdown>
    </div>


@if((auth()->user()->tutor && $activeTabCourseCategory == "eksplor") || (auth()->user()->orphanage))
    {{-- Kategori --}}
    <div>
        @if ($courseCategories->isEmpty())
            <h3>Data kursus tidak tersedia</h3>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($courseCategories as $item)
                    
                        <x-kursus.card>
                            <x-slot:image>
                                {{ $item->photo_path }}
                            </x-slot:image>
                            <x-slot:kategori>{{ $item->name }}</x-slot:kategori>
                            <x-slot:jumlahTutor>{{ $item->courses->count() }} Kursus</x-slot:jumlahTutor>
                            <x-slot name="category_id">{{$item->id}}</x-slot>
                            <x-slot:button>Selengkapnya</x-slot:button>
                        </x-kursus.card>
                @endforeach
            </div>
        @endif
    </div>
</div>
@endif

@if (auth()->user()->tutor && $activeTabCourseCategory == "kelola")
    <div>
        @if (!$coursesTutor)
            <h3>Data kursus belum ada</h3>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($coursesTutor as $item)
                    ini data
                @endforeach
            </div>
        @endif
    </div>
@endif
