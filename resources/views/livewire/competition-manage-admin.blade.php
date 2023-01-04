@section('title', 'Lomba')

<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Kelola Data Perlombaan' }}</p>
        </div>
        <div>
            <span class="hidden lg:flex gap-2 items-center pl-1 pr-2 py-1 rounded-lg border-2 border-black font-medium">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                    stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M16.5 18.75h-9m9 0a3 3 0 013 3h-15a3 3 0 013-3m9 0v-3.375c0-.621-.503-1.125-1.125-1.125h-.871M7.5 18.75v-3.375c0-.621.504-1.125 1.125-1.125h.872m5.007 0H9.497m5.007 0a7.454 7.454 0 01-.982-3.172M9.497 14.25a7.454 7.454 0 00.981-3.172M5.25 4.236c-.982.143-1.954.317-2.916.52A6.003 6.003 0 007.73 9.728M5.25 4.236V4.5c0 2.108.966 3.99 2.48 5.228M5.25 4.236V2.721C7.456 2.41 9.71 2.25 12 2.25c2.291 0 4.545.16 6.75.47v1.516M7.73 9.728a6.726 6.726 0 002.748 1.35m8.272-6.842V4.5c0 2.108-.966 3.99-2.48 5.228m2.48-5.492a46.32 46.32 0 012.916.52 6.003 6.003 0 01-5.395 4.972m0 0a6.726 6.726 0 01-2.749 1.35m0 0a6.772 6.772 0 01-3.044 0" />
                    <title>Jumlah perlombaan</title>
                </svg>
                {{ count($competitions) . ' perlombaan' }}
            </span>
        </div>
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
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Nama</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tanggal Mulai Registrasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Jam Mulai Registrasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tingkat</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                    </th>
                </tr>
            </thead>
            @if (!$competitions)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="12" class="px-3 py-4">
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
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['name'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder>Asian Games</x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ date_format(date_create($item['registration_start_date']), 'l, d/m/Y') }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.registration_start_date"
                                        class="cursor-text">
                                        <x-slot:type>date</x-slot:type>
                                        <x-slot:name>registration_start_date</x-slot:name>
                                        <x-slot:id>registration_start_date</x-slot:id>
                                        <x-slot:placeholder>HH/BB/TTTT</x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['registration_start_hour'] }}
                                @else
                                    <x-input wire:model.defer="competitions.{{ $index }}.registration_start_hour"
                                        class="cursor-text">
                                        <x-slot:type>time</x-slot:type>
                                        <x-slot:name>registration_start_hour</x-slot:name>
                                        <x-slot:id>registration_start_hour</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCompetitionIndex !== $index)
                                    {{ $item['level'] }}
                                @else
                                    <select wire:model.defer="competitions.{{ $index }}.level"
                                        class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 pl-3 pr-10 py-2 cursor-pointer">
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
                            <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                @if (is_null($editedCompetitionIndex))
                                    {{-- Selengkapnya --}}
                                    <a href="{{ route('detail-competition-admin', $item['id']) }}">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M13.5 6H5.25A2.25 2.25 0 003 8.25v10.5A2.25 2.25 0 005.25 21h10.5A2.25 2.25 0 0018 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" />
                                            <title>Lihat detail</title>
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

    {{-- Create Data Modal --}}
    @if ($showForm)
        <div class="fixed z-50 inset-0 overflow-y-scroll" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block bg-white rounded-lg px-4 pt-5 pb-4 shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-center" id="modal-title">Tambah Lomba</p>
                        <hr class="my-4">
                        {{-- Tambah Lomba Form --}}
                        <form wire:submit.prevent="addData">
                            <div class="grid gap-2">
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>name</x-slot:for>
                                        <x-slot:slot>Nama Lomba</x-slot:slot>
                                    </x-label>
                                    <span class="text-sm text-red-700">&#42;</span>
                                    <x-input wire:model="name" required>
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder>Asian Games</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="grid gap-2 lg:flex">
                                    <div class="space-y-1 w-full">
                                        <x-label>
                                            <x-slot:for>organizer</x-slot:for>
                                            <x-slot:slot>Penyelenggara</x-slot:slot>
                                        </x-label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <x-input wire:model="organizer" required>
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>organizer</x-slot:name>
                                            <x-slot:id>organizer</x-slot:id>
                                            <x-slot:placeholder>Olympic Council of Asia</x-slot:placeholder>
                                        </x-input>
                                    </div>
                                    <div class="space-y-1 w-full">
                                        <x-label>
                                            <x-slot:for>level</x-slot:for>
                                            <x-slot:slot>Tingkat</x-slot:slot>
                                        </x-label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <select wire:model="level"
                                            class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 pl-3 pr-10 py-2 cursor-pointer">
                                            <option value="Regional"
                                                @if ($item['level'] == 'Regional') "selected" @endif>
                                                Regional
                                            </option>
                                            <option value="Nasional"
                                                @if ($item['level'] == 'Nasional') "selected" @endif>
                                                Nasional</option>
                                            <option value="Internasional"
                                                @if ($item['level'] == 'Internasional') "selected" @endif>
                                                Internasional</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="grid gap-2 lg:flex">
                                    <div class="space-y-1 w-full">
                                        <x-label>
                                            <x-slot:for>registration_start_date</x-slot:for>
                                            <x-slot:slot>Tanggal Registrasi Dimulai</x-slot:slot>
                                        </x-label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <x-input wire:model="registration_start_date" class="cursor-text">
                                            <x-slot:type>date</x-slot:type>
                                            <x-slot:name>registration_start_date</x-slot:name>
                                            <x-slot:id>registration_start_date</x-slot:id>
                                            <x-slot:placeholder>HH/BB/TTTT</x-slot:placeholder>
                                        </x-input>
                                    </div>
                                    <div class="space-y-1 w-full">
                                        <x-label>
                                            <x-slot:for>registration_start_hour</x-slot:for>
                                            <x-slot:slot>Jam Registrasi Dimulai</x-slot:slot>
                                        </x-label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <x-input wire:model="registration_start_hour">
                                            <x-slot:type>time</x-slot:type>
                                            <x-slot:name>registration_start_hour</x-slot:name>
                                            <x-slot:id>registration_start_hour</x-slot:id>
                                            <x-slot:placeholder></x-slot:placeholder>
                                        </x-input>
                                    </div>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>url</x-slot:for>
                                        <x-slot:slot>Tautan Informasi Lomba</x-slot:slot>
                                    </x-label>
                                    <span class="text-sm text-red-700">&#42;</span>
                                    <x-input wire:model="url" required>
                                        <x-slot:type>url</x-slot:type>
                                        <x-slot:name>url</x-slot:name>
                                        <x-slot:id>url</x-slot:id>
                                        <x-slot:placeholder>https://url.net/</x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>photo_url</x-slot:for>
                                        <x-slot:slot>Poster Lomba</x-slot:slot>
                                    </x-label>
                                    <span class="text-sm text-red-700">&#42;</span>
                                    <x-input wire:model="photo_url">
                                        <x-slot:type>url</x-slot:type>
                                        <x-slot:name>photo_url</x-slot:name>
                                        <x-slot:id>photo_url</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                </div>
                                <div class="space-y-1">
                                    <x-label>
                                        <x-slot:for>description</x-slot:for>
                                        <x-slot:slot>Deskripsi lomba</x-slot:slot>
                                    </x-label>
                                    <span class="text-sm text-red-700">&#42;</span>
                                    <x-textarea wire:model="description" required>
                                        <x-slot:maxlength>255</x-slot:maxlength>
                                        <x-slot:placeholder>Masukkan keterangan perlombaan
                                        </x-slot:placeholder>
                                    </x-textarea>
                                </div>
                                <div class="text-sm text-red-700">
                                    <span>&#42;</span>
                                    <span>Wajib diisi</span>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="grid gap-4 lg:flex">
                        <button wire:click.prevent='toggleForm'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                            <p class="font-semibold text-red-700">Batal</p>
                        </button>
                        <button wire:click.prevent='addData'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                            <p class="font-semibold text-white">Tambah</p>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
