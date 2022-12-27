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
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option value="Abjad Nama" {{ $orphanDropdownSort == 'Abjad Nama' ? 'selected' : null }}>Abjad Nama</option>
            <option value="Total Kursus Berhasil" {{ $orphanDropdownSort == 'Total Kursus Berhasil' ? 'selected' : null }}>Jumlah Kursus</option>
            <option value="Total Rekomendasi Lomba" {{ $orphanDropdownSort == 'Total Rekomendasi Lomba' ? 'selected' : null }}>Total Rekomendasi Lomba
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

    <p class="text-0xl leading-6 text-gray-500">
        Jumlah anak: {{ count($orphans) }}
    </p>

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
                        Note</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Terakhir Dirubah</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tanggal Ditambahkan</th>
                </tr>
            </thead>
            @if (!$orphans)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="2" class="px-3 py-4">
                            <div
                                class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>Belum Ada Data Anak Panti</p>
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
                                    <input type="text" wire:model.defer="orphans.{{ $index }}.name"
                                        class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" />
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    {{ $item['gender'] }}
                                @else
                                    <input type="text" wire:model.defer="orphans.{{ $index }}.gender"
                                        class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" />
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    {{ date_format(date_create($item['date_of_birth']), 'l, d F Y, H:i A') }}
                                @else
                                    <input type="text" wire:model.defer="orphans.{{ $index }}.date_of_birth"
                                        class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" />
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                               0
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                0
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    {{ $item['note'] }}
                                @else
                                    <input type="text" wire:model.defer="orphans.{{ $index }}.note"
                                        class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" />
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ date_format(date_create($item['updated_at']), 'l, d F Y, H:i A') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ date_format(date_create($item['created_at']), 'l, d F Y, H:i A') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedOrphanIndex !== $index)
                                    <button wire:click.prevent='editOrphan({{ $index }})'> Edit
                                    </button>
                                @else
                                    <button wire:click.prevent='saveOrphan({{ $index }})'> Simpan
                                    </button>
                                @endif
                            </td>
                            <td> <button wire:click.prevent='deleteOrphan({{ $index }})'> Hapus
                                </button>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endif
        </table>
    </div>
</div>
