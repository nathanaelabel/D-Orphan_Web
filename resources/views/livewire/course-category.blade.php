<div class="space-y-8">
    @if (auth()->user()->tutor)
        {{-- Title --}}
        @if ($activeTabCourseCategory == 'eksplor')
            <p class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang tersedia' }}</p>
        @else
            <p class="text-3xl leading-10 font-bold">{{ 'Atur kursus yang Anda sediakan' }}</p>
        @endif
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
        <p class="text-3xl leading-10 font-bold">{{ 'Jelajahi kursus yang ingin dipelajari' }}</p>
    @endif

    @if ($activeTabCourseCategory == 'eksplor')
        <div class="flex justify-between gap-4 items-center">
            {{-- Search Bar --}}
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
    @else
        <div class="flex justify-between gap-4 items-center">
            {{-- Search Bar --}}
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
                <x-slot:option1>Catur</x-slot:option1>
                <x-slot:option2>Renang</x-slot:option2>
            </x-kursus.dropdown>
            {{-- Tambah Kursus --}}
            <a wire:click='' class="cursor-pointer" title="Tambah">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-blue-500">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                </svg>
            </a>
        </div>
    @endif

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
    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tarif per jam</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Batas peserta kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Durasi kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tipe Kehadiran</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Lokasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Aksi</th>
                </tr>
            </thead>
            @if ($coursesTutor->isEmpty())
                <tbody class="bg-white">
                    <tr>
                        <td colspan="6" class="px-3 py-4">
                            <div
                                class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>{{ 'Belum ada kursus yang disediakan' }}</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($coursesTutor as $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ 'Rp' . number_format($item->hourly_price, 2, ',', '.') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ $item->maximum_member . ' anak/Panti' }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ $item->name }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($item->is_online == 0)
                                    {{ 'Luring' }}
                                @elseif ($item->is_online == 1)
                                    {{ 'Daring' }}
                                @elseif ($item->is_visit == 0)
                                    {{ 'Luring' }}
                                @else
                                    {{ '-' }}
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($item->location == null)
                                    {{ '-' }}
                                @else
                                    {{ $item->location }}
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                <a href="{{ route('detail-kelola-kursus') }}" class="cursor-pointer text-blue-500"
                                    title="Detail">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M13.5 6H5.25A2.25 2.25 0 003 8.25v10.5A2.25 2.25 0 005.25 21h10.5A2.25 2.25 0 0018 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" />
                                    </svg>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endif
        </table>
    </div>
@endif
