@section('title', 'Kelola Perlombaan')

<div class="space-y-8">
    {{-- Title --}}
    <p class="text-3xl leading-10 font-bold">Kelola Data Perlombaan</p>

    <div class="flex gap-2 items-center">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
            class="w-6 h-6 text-gray-700">
            <path stroke-linecap="round" stroke-linejoin="round"
                d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
            <title>Jumlah Perlombaan</title>
        </svg>

        <p class="text-lg leading-8 text-gray-700">{{ count($competitions) }} Perlombaan</p>
    </div>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Nama Perlombaan</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search" id="search"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Nama Perlombaan" wire:model="competitionSearch" />
        </div>

        {{-- Tambah Perlombaan --}}
        <a wire:click='toggleForm' class="cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-blue-500">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                <title>Tambah Data</title>
            </svg>
        </a>
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
                        Poster</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tanggal Mulai Registrasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Jam Mulai Registrasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Link Informasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tingkat</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Deskripsi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Penyelenggara</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Terakhir Diubah</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Tanggal Ditambahkan</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Aksi</th>
                </tr>
            </thead>
            @if (!$competitions)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="10" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>Belum ada data Perlombaan</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($competitions as $index => $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-fit">
                                {{ $loop->iteration }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['name'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['photo_url'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.photo_url">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>photo_url</x-slot:name>
                                        <x-slot:id>photo_url</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ date_format(date_create($item['registration_start_date']), 'l, d/m/Y') }}
                                @else
                                    <input type="date" onfocus="this.showPicker()"
                                        wire:model.defer="competitions.{{ $index }}.registration_start_date">
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['registration_start_hour'] }}
                                @else
                                    <input type="date" onfocus="this.showPicker()"
                                        wire:model.defer="competitions.{{ $index }}.registration_start_hour">
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['url'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.url">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>url</x-slot:name>
                                        <x-slot:id>url</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['level'] }}
                                @else
                                    <select name="level" id="level"
                                        wire:model.defer="competitions.{{ $index }}.level">
                                        <option value="Regional" @if ($item['level'] == 'Regional') "selected" @endif>
                                            Regional
                                        </option>
                                        <option value="Nasional" @if ($item['level'] == 'Nasional') "selected" @endif>
                                            Nasional</option>
                                        <option value="Internasional"
                                            @if ($item['level'] == 'Internasional') "selected" @endif>
                                            Internasional</option>
                                    </select>
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['description'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.description">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>description</x-slot:name>
                                        <x-slot:id>description</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap
                                        px-3 py-4 w-full">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['organizer'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.organizer">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>organizer</x-slot:name>
                                        <x-slot:id>organizer</x-slot:id>
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
                                @if (!is_null($editedCompetitionIndex))
                                    @if ($editedCompetitionIndex == $index)
                                        {{-- Simpan --}}
                                        <a wire:click.prevent='openModalConfirmation({{ $index }}, "ubah")'
                                            class="cursor-pointer text-blue-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                class="w-6 h-6 text-blue-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z" />
                                                <title>Simpan</title>
                                            </svg>
                                        </a>
                                    @endif
                                @endif
                                @if (is_null($editedCompetitionIndex))
                                    {{-- Ubah --}}
                                    <a wire:click.prevent='editCompetition({{ $index }})'
                                        class="cursor-pointer text-green-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                            <title>Ubah</title>
                                        </svg>
                                    </a>
                                @endif
                                @if (is_null($editedCompetitionIndex))
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
            @endif
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
                        <a wire:click.prevent=@if ($keterangan == 'ubah') 'saveCompetition' @elseif($keterangan == 'hapus') 'deleteCompetition' @endif
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


    {{-- Show Modal Add Data --}}
    @if ($showForm)
        <div class="fixed z-50 inset-0 overflow-y-hidden" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4 text-center sm:block sm:p-0">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-center overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-gray-900" id="modal-title">Tambah Perlombaan
                        </p>
                        <hr class="my-4">
                        {{-- Tambah Perlombaan Form --}}
                        <form wire:submit.prevent="addData">
                            <div class="grid gap-2 bg-white rounded-2xl shadow px-8 py-6">
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>name</x-slot:for>
                                        <x-slot:slot>Nama</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>photo_url</x-slot:for>
                                        <x-slot:slot>photo_url</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="photo_url">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>photo_url</x-slot:name>
                                        <x-slot:id>photo_url</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                </div>

                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>registration_start_date</x-slot:for>
                                        <x-slot:slot>registration_start_date</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="registration_start_date" class="cursor-text">
                                        <x-slot:type>date</x-slot:type>
                                        <x-slot:name>registration_start_date</x-slot:name>
                                        <x-slot:id>registration_start_date</x-slot:id>
                                        <x-slot:placeholder>HH/BB/TTTT</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>registration_start_hour</x-slot:for>
                                        <x-slot:slot>registration_start_hour</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="registration_start_hour">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>registration_start_hour</x-slot:name>
                                        <x-slot:id>registration_start_hour</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>url</x-slot:for>
                                        <x-slot:slot>url</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="url">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>url</x-slot:name>
                                        <x-slot:id>url</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>level</x-slot:for>
                                        <x-slot:slot>level</x-slot:slot>
                                    </x-label>
                                    <select name="level" id="level" wire:model="level">
                                        <option value="Regional" @if ($item['level'] == 'Regional') "selected" @endif>
                                            Regional
                                        </option>
                                        <option value="Nasional" @if ($item['level'] == 'Nasional') "selected" @endif>
                                            Nasional</option>
                                        <option value="Internasional"
                                            @if ($item['level'] == 'Internasional') "selected" @endif>
                                            Internasional</option>
                                    </select>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>organizer</x-slot:for>
                                        <x-slot:slot>organizer</x-slot:slot>
                                    </x-label>
                                    <x-input wire:model="organizer">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>organizer</x-slot:name>
                                        <x-slot:id>organizer</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>description</x-slot:for>
                                        <x-slot:slot>description</x-slot:slot>
                                    </x-label>
                                    <x-textarea wire:model="description">
                                        <x-slot:maxlength>255</x-slot:maxlength>
                                        <x-slot:placeholder>Masukkan keterangan dari perlombaan jika ada
                                        </x-slot:placeholder>
                                    </x-textarea>
                                </div>
                            </div>
                        </form>
                    </div>

                    {{-- Bisa mendeteksi livewire click --}}
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
