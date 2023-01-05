@section('title', 'Detail Lomba')

<div class="space-y-8">
    <x-lomba.detail-lomba.breadcrumb>
        <x-slot:page1>Lomba</x-slot:page1>
        <x-slot:page2>Detail Lomba</x-slot:page2>
    </x-lomba.detail-lomba.breadcrumb>

    <p class="text-3xl leading-10 font-bold">{{ 'Detail Lomba' }}</p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        @if ($editedCompetition)
            <div class="w-full self-center">
                <div class="grid gap-4 p-4 lg:p-8">
                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>name</x-slot:for>
                            <x-slot:slot>Nama Lomba</x-slot:slot>
                        </x-label>
                        <x-input wire:model="name">
                            <x-slot:type>url</x-slot:type>
                            <x-slot:name>name</x-slot:name>
                            <x-slot:id>name</x-slot:id>
                            <x-slot:placeholder>Asian Games</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>photo_url</x-slot:for>
                            <x-slot:slot>Poster Lomba</x-slot:slot>
                        </x-label>
                        <x-input wire:model="photo_url">
                            <x-slot:type>url</x-slot:type>
                            <x-slot:name>photo_url</x-slot:name>
                            <x-slot:id>photo_url</x-slot:id>
                            <x-slot:placeholder></x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>registration_start_date</x-slot:for>
                            <x-slot:slot>Tanggal Registrasi Dimulai</x-slot:slot>
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
                            <x-slot:slot>Jam Registrasi Dimulai</x-slot:slot>
                        </x-label>
                        <x-input wire:model="registration_start_hour" class="cursor-text">
                            <x-slot:type>time</x-slot:type>
                            <x-slot:name>registration_start_hour</x-slot:name>
                            <x-slot:id>registration_start_hour</x-slot:id>
                            <x-slot:placeholder></x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>level</x-slot:for>
                            <x-slot:slot>Tingkat</x-slot:slot>
                        </x-label>
                        <select wire:model="level"
                            class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 pl-3 pr-10 py-2 cursor-pointer">
                            <option value="Regional" @if ($competition['level'] == 'Regional') "selected" @endif>
                                Regional
                            </option>
                            <option value="Nasional" @if ($competition['level'] == 'Nasional') "selected" @endif>
                                Nasional</option>
                            <option value="Internasional" @if ($competition['level'] == 'Internasional') "selected" @endif>
                                Internasional</option>
                        </select>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>organizer</x-slot:for>
                            <x-slot:slot>Penyelenggara</x-slot:slot>
                        </x-label>
                        <x-input wire:model="organizer">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>organizer</x-slot:name>
                            <x-slot:id>organizer</x-slot:id>
                            <x-slot:placeholder>Olympic Council of Asia</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>url</x-slot:for>
                            <x-slot:slot>Tautan Lomba</x-slot:slot>
                        </x-label>
                        <x-input wire:model="url">
                            <x-slot:type>url</x-slot:type>
                            <x-slot:name>url</x-slot:name>
                            <x-slot:id>url</x-slot:id>
                            <x-slot:placeholder>https://url.net/</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>description</x-slot:for>
                            <x-slot:slot>Deskripsi Lomba</x-slot:slot>
                        </x-label>
                        <x-textarea wire:model="description">
                            <x-slot:maxlength>255</x-slot:maxlength>
                            <x-slot:placeholder>Masukkan deskripsi lomba
                            </x-slot:placeholder>
                        </x-textarea>
                    </div>

                    <button wire:click.prevent='saveCompetition'
                        class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                        <p class="font-semibold text-white">Simpan</p>
                    </button>
                </div>

            </div>
        @else
            <div class="lg:w-6/12">
                <img src="{{ $competition->photo_url }}" alt="Lomba"
                    class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none"
                    onerror="this.onerror=null;this.src='/img/placeholder.svg';">
            </div>

            <div class="w-full self-center">
                <div class="grid gap-4 p-4 lg:p-8">
                    <p class="text-2xl leading-8 font-semibold text-gray-900">
                        {{ $competition->name }}
                    </p>

                    <div class="grid gap-1">
                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                                <title>Tanggal registrasi dimulai</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ date_format(date_create($competition['registration_start_date']), 'l, d/m/Y') }}</p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                                <title>Jam registrasi dimulai</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">{{ $competition['registration_start_hour'] }}</p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z" />
                                <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z" />
                                <title>Tingkat</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $competition['level'] }}
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M18 18.72a9.094 9.094 0 003.741-.479 3 3 0 00-4.682-2.72m.94 3.198l.001.031c0 .225-.012.447-.037.666A11.944 11.944 0 0112 21c-2.17 0-4.207-.576-5.963-1.584A6.062 6.062 0 016 18.719m12 0a5.971 5.971 0 00-.941-3.197m0 0A5.995 5.995 0 0012 12.75a5.995 5.995 0 00-5.058 2.772m0 0a3 3 0 00-4.681 2.72 8.986 8.986 0 003.74.477m.94-3.197a5.971 5.971 0 00-.94 3.197M15 6.75a3 3 0 11-6 0 3 3 0 016 0zm6 3a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0zm-13.5 0a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0z" />
                                <title>Penyelenggara lomba</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $competition['organizer'] }}
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5" />
                                </svg>
                                <title>Tanggal ditambahkan</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ date_format(date_create($competition['created_at']), 'l, d F Y, H:i A') }}</p>
                        </div>
                    </div>

                    <p class="text-gray-500">{{ $competition['description'] }}</p>

                    <div>
                        <a href="{{ $competition['url'] }}" target="_blank" rel="noopener noreferrer">
                            <x-primary-button>Tautan Lomba</x-primary-button>
                        </a>
                    </div>
                    <hr>
                    <p class="text-sm text-gray-500">
                        {{ 'Diperbarui pada ' . date_format(date_create($competition['updated_at']), 'l, d F Y, H:i A') }}
                    </p>
                </div>
            </div>
    </div>

    <div class="grid gap-4 lg:flex">
        <button wire:click='deleteCompetition'
            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
            <p class="font-semibold text-red-700">Hapus</p>
        </button>
        <button wire:click='editCompetition'
            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500">
            <p class="font-semibold text-white">Ubah</p>
        </button>
    </div>
    @endif
</div>
