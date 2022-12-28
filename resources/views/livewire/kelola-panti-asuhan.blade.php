@section('title', 'Kelola Anak Panti')

<div class="space-y-8">
    {{-- Title --}}
    <p class="text-3xl leading-10 font-bold">Kelola Data Anak Panti</p>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Nama Anak Panti</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Nama Anak Panti" wire:model="orphanSearch" />
        </div>

        {{-- Dropdown Sort --}}
        <select id="sort_orphan" name="sort_orphan" wire:model="orphanDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm font-medium border-transparent focus:border-transparent focus:ring bg-blue-500 text-white focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option value="Abjad Nama" {{ $orphanDropdownSort == 'Abjad Nama' ? 'selected' : null }}>Abjad Nama</option>
            <option value="Total Kursus Berhasil"
                {{ $orphanDropdownSort == 'Total Kursus Berhasil' ? 'selected' : null }}>Jumlah Kursus</option>
            <option value="Total Rekomendasi Lomba"
                {{ $orphanDropdownSort == 'Total Rekomendasi Lomba' ? 'selected' : null }}>Total Rekomendasi
            </option>
        </select>

        {{-- Tambah Anak Panti --}}
        <a wire:click='' class="cursor-pointer" title="Tambah Data">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-blue-500">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
            </svg>
        </a>
    </div>

    <div class="flex gap-2 items-center">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
            stroke="currentColor" class="w-6 h-6 text-gray-700">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
            <title>Jumlah Anak Panti Asuhan</title>
        </svg>

        <p class="text-lg leading-8 text-gray-700">{{ count($orphans) }} anak Panti</p>
    </div>

    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                        No.</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Nama</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Jenis Kelamin</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tanggal Lahir</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Total Kursus Berhasil</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Total Rekomendasi Lomba</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Catatan</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Terakhir Diubah</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tanggal Ditambahkan</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Aksi</th>
                </tr>
            </thead>
            @if (!$orphans)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="10" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>Belum ada data Anak Panti</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($orphans as $index => $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-fit">
                                {{ $loop->iteration }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    {{ $item['name'] }}
                                @else
                                    <x-input wire:model.defer="orphans.{{ $index }}.name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    @if ($item['gender'] == 'Male')
                                        Pria
                                    @else
                                        Wanita
                                    @endif
                                @else
                                    <x-input wire:model.defer="orphans.{{ $index }}.gender">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>gender</x-slot:name>
                                        <x-slot:id>gender</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    {{ date_format(date_create($item['date_of_birth']), 'l, d/m/Y, H:i A') }}
                                @else
                                    <x-input wire:model.defer="orphans.{{ $index }}.date_of_birth">
                                        <x-slot:type>date</x-slot:type>
                                        <x-slot:name>date_of_birth</x-slot:name>
                                        <x-slot:id>date_of_birth</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ $item['total_kursus'] }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ $item['total_lomba'] }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    @if ($item['note'] == null)
                                        {{ '-' }}
                                    @else
                                        {{ $item['note'] }}
                                    @endif
                                @else
                                    <x-input wire:model.defer="orphans.{{ $index }}.note">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>note</x-slot:name>
                                        <x-slot:id>note</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ date_format(date_create($item['updated_at']), 'l, d F Y, H:i A') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ date_format(date_create($item['created_at']), 'l, d F Y, H:i A') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full flex gap-2">
                                @if ($editedOrphanIndex !== $index)
                                    {{-- Ubah --}}
                                    <a wire:click.prevent='editOrphan({{ $index }})'
                                        class="cursor-pointer text-green-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                            <title>Ubah</title>
                                        </svg>
                                    </a>
                                @else
                                    {{-- Simpan --}}
                                    <a wire:click.prevent='saveOrphan({{ $index }})'
                                        class="cursor-pointer text-blue-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z" />
                                            <title>Simpan</title>
                                        </svg>
                                    </a>
                                @endif
                                {{-- Hapus --}}
                                <a wire:click.prevent='deleteOrphan({{ $index }})'
                                    class="cursor-pointer text-red-500">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                        <title>Hapus</title>
                                    </svg>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endif
        </table>
    </div>
</div>
