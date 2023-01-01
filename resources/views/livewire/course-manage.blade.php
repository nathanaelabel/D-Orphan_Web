@section('title', 'Kelola Kursus')


<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Atur kursus yang Anda sediakan' }}</p>
        </div>
        @if (count($coursesTutors) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M3 13.125C3 12.504 3.504 12 4.125 12h2.25c.621 0 1.125.504 1.125 1.125v6.75C7.5 20.496 6.996 21 6.375 21h-2.25A1.125 1.125 0 013 19.875v-6.75zM9.75 8.625c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125v11.25c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 01-1.125-1.125V8.625zM16.5 4.125c0-.621.504-1.125 1.125-1.125h2.25C20.496 3 21 3.504 21 4.125v15.75c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 01-1.125-1.125V4.125z" />
                        <title>Jumlah kursus tersedia</title>
                    </svg>
                    {{ count($coursesTutors) . ' kursus tersedia' }}
                </span>
            </div>
        @endif
    </div>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Kursus</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search_kelola" id="search_kelola"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Kursus" wire:model="categoryKelolaSearch" />
        </div>

        {{-- Dropdown Sort --}}
        <select id="sort_category_kelola" name="sort_category_kelola" wire:model="categoryKelolaDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            @empty($skills)
                <option "selected">Tidak Ada Keahlian</option>
            @else
                @foreach ($skills as $itemSkill)
                    <option value="{{ $itemSkill->name }}"
                        {{ $categoryKelolaDropdownSort == $itemSkill->name ? 'selected' : null }}>
                        {{ $itemSkill->name }}
                    </option>
                @endforeach
            @endempty
        </select>

        {{-- Tambah Kursus --}}
        <a wire:click.prevent='toggleForm' class="cursor-pointer" title="Tambah">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-blue-500">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
            </svg>
        </a>
    </div>

    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Kategori Kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Nama Kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tarif Per Jam</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Batas Jumlah Peserta</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Akses</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Lokasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Harga Sewa Alat</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Deskripsi Sewa Alat</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Deskripsi Kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Terakhir Diubah</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tanggal Ditambahkan</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Aksi</th>
                </tr>
            </thead>
            @empty($coursesTutors)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="5" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
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
                    @foreach ($coursesTutors as $index => $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $tutorSkills[$index]['name'] }}
                                @elseif($editedCourseTutorIndex === $index)
                                    <div>
                                        <select id="sort_category_kelola" name="sort_category_kelola"
                                            wire:model="skillIdModel"
                                            class="dropdown
                                        w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent
                                        focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500
                                        focus:ring-opacity-50 cursor-pointer">

                                            @foreach ($allSkills as $itemAllSkill)
                                                <option value="{{ $itemAllSkill->id }}"
                                                    {{ $tutorSkills[$index]['id'] == $itemAllSkill->id ? 'selected' : null }}>
                                                    {{ $itemAllSkill->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['name'] }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ 'Rp' . number_format($item['hourly_price'], 2, ',', '.') }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.hourly_price">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>hourly_price</x-slot:name>
                                        <x-slot:id>hourly_price</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['maximum_member'] }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.maximum_member">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>maximum_member</x-slot:name>
                                        <x-slot:id>maximum_member</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                <div>
                                    @if ($editedCourseTutorIndex !== $index)
                                        @if ($item['is_online'] == 1)
                                            Daring
                                        @else
                                            Luring
                                        @endif
                                    @else
                                        <x-input wire:model.defer="coursesTutors.{{ $index }}.is_online">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>is_online</x-slot:name>
                                            <x-slot:id>is_online</x-slot:id>
                                            <x-slot:placeholder></x-slot:placeholder>
                                        </x-input>
                                    @endif

                                    @if ($editedCourseTutorIndex !== $index)
                                        @if ($item['is_visit'] == 1)
                                            Mendatangi
                                        @else
                                            Didatangi
                                        @endif
                                    @else
                                        <x-input wire:model.defer="coursesTutors.{{ $index }}.is_visit">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>is_visit</x-slot:name>
                                            <x-slot:id>is_visit</x-slot:id>
                                            <x-slot:placeholder></x-slot:placeholder>
                                        </x-input>
                                    @endif
                                </div>
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['location'] }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.location">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>location</x-slot:name>
                                        <x-slot:id>location</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ 'Rp' . number_format($item['tool_price'], 2, ',', '.') }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.tool_price">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>tool_price</x-slot:name>
                                        <x-slot:id>tool_price</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['tool_description'] }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.tool_description">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>tool_description</x-slot:name>
                                        <x-slot:id>tool_description</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['description'] }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.description">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>description</x-slot:name>
                                        <x-slot:id>description</x-slot:id>
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
                                @if (!is_null($editedCourseTutorIndex))
                                    @if ($editedCourseTutorIndex == $index)
                                        {{-- Simpan --}}
                                        <a wire:click.prevent='openModalConfirmation({{ $index }}, "ubah")'
                                            class="cursor-pointer text-blue-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z" />
                                                <title>Simpan</title>
                                            </svg>
                                        </a>
                                    @endif
                                @endif
                                @if (is_null($editedCourseTutorIndex))
                                    {{-- Ubah --}}
                                    <a wire:click.prevent='editCourseTutor({{ $index }})'
                                        class="cursor-pointer text-green-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                            <title>Ubah</title>
                                        </svg>
                                    </a>
                                @endif
                                @if (is_null($editedCourseTutorIndex))
                                    {{-- Hapus --}}
                                    <a wire:click.prevent='openModalConfirmation({{ $index }}, "hapus")'
                                        class="cursor-pointer text-red-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                            <title>Hapus</title>
                                        </svg>
                                    </a>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endempty
        </table>
    </div>

    @if ($showFormConfirmation)
        <div class="fixed z-50 inset-0 overflow-y-hidden" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4 text-center sm:block sm:p-0">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-center overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-gray-900" id="modal-title">Ubah Data</p>
                        <hr class="my-4">
                        <p class="text-gray-500">Konfirmasi bahwa data yang Anda pilih akan diubah</p>
                    </div>
                    <div class="grid gap-4 lg:flex">
                        <a wire:click.prevent='closeModalConfirmation' class="cursor-pointer">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                <title>Close</title>
                            </svg>
                        </a>
                        <a wire:click.prevent=@if ($keterangan == 'ubah') 'saveCourseTutor' @elseif($keterangan == 'hapus') 'deleteCourseTutor' @endif
                            class="cursor-pointer">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                <title>
                                    @if ($keterangan == 'ubah')
                                        Ubah
                                    @elseif($keterangan == 'hapus')
                                        Hapus
                                    @endif
                                </title>
                            </svg>Ubah
                        </a>
                    </div>
                </div>
            </div>
        </div>
    @endif

    @if ($showForm)
        <div class="fixed z-50 inset-0 overflow-y-hidden" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4 text-center sm:block sm:p-0">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-center overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-gray-900" id="modal-title">Tambah Anak
                            Panti Asuhan</p>
                        <hr class="my-4">
                        {{-- Tambah Kursus Form --}}
                        <form wire:submit.prevent="addData">
                            <div class="grid gap-2 bg-white rounded-2xl shadow px-8 py-6">
                                <div class="space-y-1">

                                    {{-- Note untuk bagian option ini pakai x-label error kurang tau kenapa, Abel dan Zizah bingung. Jadi pakai select biasa dulu. --}}

                                    {{-- <x-label>
                                        <x-slot:for>skill_id</x-slot:for>
                                        <x-slot:slot>Kategori Kursus</x-slot:slot>
                                    </x-label> --}}
                                    <select wire:model="skill_id">
                                        @foreach ($skills as $skill)
                                            <option value="{{ $skill->id }}">
                                                {{ $skill->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>name</x-slot:for>
                                        <x-slot:slot>Nama Kursus</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder>Nama Kursus</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>hourly_price</x-slot:for>
                                        <x-slot:slot>Tarif Per Jam</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="hourly_price">
                                        <x-slot:type>number</x-slot:type>
                                        <x-slot:name>hourly_price</x-slot:name>
                                        <x-slot:id>hourly_price</x-slot:id>
                                        <x-slot:placeholder>Tarif Per Jam</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>maximum_member</x-slot:for>
                                        <x-slot:slot>Batas Jumlah Peserta</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="maximum_member">
                                        <x-slot:type>number</x-slot:type>
                                        <x-slot:name>maximum_member</x-slot:name>
                                        <x-slot:id>maximum_member</x-slot:id>
                                        <x-slot:placeholder>Batas Jumlah Peserta</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>is_online</x-slot:for>
                                        <x-slot:slot>Daring Didatangi</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model.defer="is_online">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>is_online</x-slot:name>
                                        <x-slot:id>is_online</x-slot:id>
                                        <x-slot:placeholder>0 Tidak, 1 Ya</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>is_visit</x-slot:for>
                                        <x-slot:slot>Luring Didatangi</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model.defer="is_visit">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>is_visit</x-slot:name>
                                        <x-slot:id>is_visit</x-slot:id>
                                        <x-slot:placeholder>0 Tidak, 1 Ya</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>location</x-slot:for>
                                        <x-slot:slot>Lokasi</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="location">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>location</x-slot:name>
                                        <x-slot:id>location</x-slot:id>
                                        <x-slot:placeholder>Lokasi</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>tool_price</x-slot:for>
                                        <x-slot:slot>Harga Sewa Alat</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="tool_price">
                                        <x-slot:type>number</x-slot:type>
                                        <x-slot:name>tool_price</x-slot:name>
                                        <x-slot:id>tool_price</x-slot:id>
                                        <x-slot:placeholder>Harga Sewa Alat</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>tool_description</x-slot:for>
                                        <x-slot:slot>Deskripsi Sewa Alat</x-slot:slot>
                                    </x-label>
                                    <x-textarea wire:model="tool_description">
                                        <x-slot:maxlength>255</x-slot:maxlength>
                                        <x-slot:placeholder>Masukkan deskripsi sewa alat</x-slot:placeholder>
                                    </x-textarea>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>description</x-slot:for>
                                        <x-slot:slot>Deskripsi</x-slot:slot>
                                    </x-label>
                                    <x-textarea wire:model="description">
                                        <x-slot:maxlength>255</x-slot:maxlength>
                                        <x-slot:placeholder>Masukkan deskripsi dari kursus</x-slot:placeholder>
                                    </x-textarea>
                                </div>
                        </form>
                    </div>

                    <a wire:click.prevent='addData' class="cursor-pointer">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            <title>
                                Tambahkan</title>
                        </svg>
                    </a>

                    <a wire:click.prevent='toggleForm' class="cursor-pointer">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            <title>
                                Batal</title>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    @endif
</div>
