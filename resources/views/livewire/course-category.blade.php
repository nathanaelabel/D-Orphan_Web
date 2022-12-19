    <div class="space-y-8">
    {{-- Title --}}
    <h3 class="text-3xl leading-10 font-bold">{{ 'Jelajahi kategori yang ingin dipelajari' }}</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <x-search-bar>
            <x-slot:placeholder>Cari Kursus</x-slot:placeholder>
        </x-search-bar>
        {{-- Dropdown Sort --}}
        <x-kursus.dropdown>
            <x-slot:id>sort_category</x-slot:id>
            <x-slot:name>sort_category</x-slot:name>
            <x-slot:option1>Abjad Kategori</x-slot:option1>
            <x-slot:option2>Jumlah Tutor</x-slot:option2>
        </x-kursus.dropdown>
    </div>

    {{-- Kategori --}}
    <div>
        @if (!$courseCategories)
            <h3>Belum ada kategori kursus yang tersedia</h3>
        @else
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
                @foreach ($courseCategories as $item)
                    <a href="{{ route('tutor', $item->id) }}">
                        <x-kursus.card>
                            <x-slot:image>
                              {{$item->photo_path}}
                            </x-slot:image>
                            <x-slot:kategori>{{ $item->name }}</x-slot:kategori>
                            <x-slot:jumlahTutor>{{ $item->courses->count() }} Kursus</x-slot:jumlahTutor>
                            <x-slot:button>Selengkapnya</x-slot:button>
                        </x-kursus.card>
                    </a>
                @endforeach
            </div>
        @endif
    </div>
</div>
