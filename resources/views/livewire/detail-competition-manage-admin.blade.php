@section('title', 'Detail Lomba')


<div class="space-y-8">
    <x-lomba.detail-lomba.breadcrumb>
        <x-slot:page1>Lomba</x-slot:page1>
        <x-slot:page2>Detail Lomba</x-slot:page2>
    </x-lomba.detail-lomba.breadcrumb>

    <p class="text-3xl leading-10 font-bold">{{ 'Detail Lomba' }}</p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-6/12">
            <img src="{{ $competition->photo_url }}" alt="Lomba"
                class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none"
                onerror="this.onerror=null;this.src='/img/placeholder.svg';">
        </div>

        <div class="w-fit self-center">
            <div class="grid gap-2">
                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>name</x-slot:for>
                        <x-slot:slot>Nama</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ $competition->name }}
                    @else
                        <x-input wire:model="name">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>name</x-slot:name>
                            <x-slot:id>name</x-slot:id>
                            <x-slot:placeholder>Asian Games</x-slot:placeholder>
                        </x-input>
                    @endif
                </div>
                @if ($editedCompetition)
                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>photo_url</x-slot:for>
                            <x-slot:slot>Poster</x-slot:slot>
                        </x-label>

                        <x-input wire:model="photo_url">
                            <x-slot:type>url</x-slot:type>
                            <x-slot:name>photo_url</x-slot:name>
                            <x-slot:id>photo_url</x-slot:id>
                            <x-slot:placeholder></x-slot:placeholder>
                        </x-input>

                    </div>
                @endif

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>registration_start_date</x-slot:for>
                        <x-slot:slot>Tanggal Registrasi Dibuka</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ date_format(date_create($competition['registration_start_date']), 'l, d/m/Y') }}
                    @else
                        <x-input wire:model="registration_start_date" class="cursor-text">
                            <x-slot:type>date</x-slot:type>
                            <x-slot:name>registration_start_date</x-slot:name>
                            <x-slot:id>registration_start_date</x-slot:id>
                            <x-slot:placeholder>HH/BB/TTTT</x-slot:placeholder>
                        </x-input>
                    @endif
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>registration_start_hour</x-slot:for>
                        <x-slot:slot>Jam Registrasi Dibuka</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ $competition['registration_start_hour'] }}
                    @else
                        <x-input wire:model="registration_start_hour" class="cursor-text">
                            <x-slot:type>time</x-slot:type>
                            <x-slot:name>registration_start_hour</x-slot:name>
                            <x-slot:id>registration_start_hour</x-slot:id>
                            <x-slot:placeholder></x-slot:placeholder>
                        </x-input>
                    @endif
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>url</x-slot:for>
                        <x-slot:slot>Link Informasi Lomba</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ $competition['url'] }}
                    @else
                        <x-input wire:model="url">
                            <x-slot:type>url</x-slot:type>
                            <x-slot:name>url</x-slot:name>
                            <x-slot:id>url</x-slot:id>
                            <x-slot:placeholder>https://url.net/</x-slot:placeholder>
                        </x-input>
                    @endif
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>level</x-slot:for>
                        <x-slot:slot>Tingkat</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ $competition['level'] }}
                    @else
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
                    @endif
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>description</x-slot:for>
                        <x-slot:slot>Deskripsi Lomba</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ $competition['description'] }}
                    @else
                        <x-textarea wire:model="description">
                            <x-slot:maxlength>255</x-slot:maxlength>
                            <x-slot:placeholder>Masukkan deskripsi lomba
                            </x-slot:placeholder>
                        </x-textarea>
                    @endif
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>organizer</x-slot:for>
                        <x-slot:slot>Penyelenggara Lomba</x-slot:slot>
                    </x-label>
                    @if (!$editedCompetition)
                        {{ $competition['organizer'] }}
                    @else
                        <x-input wire:model="organizer">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>organizer</x-slot:name>
                            <x-slot:id>organizer</x-slot:id>
                            <x-slot:placeholder>Olympic Council of Asia</x-slot:placeholder>
                        </x-input>
                    @endif
                </div>

                <div>
                    @if (!$editedCompetition)
                        <hr>
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>updated_at</x-slot:for>
                                <x-slot:slot>Terakhir Diubah</x-slot:slot>
                            </x-label>
                            {{ date_format(date_create($competition['updated_at']), 'l, d F Y, H:i A') }}
                        </div>
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>created_at</x-slot:for>
                                <x-slot:slot>Tanggal ditambahkan</x-slot:slot>
                            </x-label>
                            {{ date_format(date_create($competition['created_at']), 'l, d F Y, H:i A') }}
                        </div>
                        <div>
                            {{-- Ubah --}}
                            <a wire:click='editCompetition' class="cursor-pointer text-green-500">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                    <title>Ubah</title>
                                </svg>
                            </a>

                            {{-- Hapus --}}
                            <a wire:click='openModalConfirmation' class="cursor-pointer text-red-500">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                    <title>Hapus</title>
                                </svg>
                            </a>
                        </div>
                    @else
                        <button wire:click='resetForm'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-500 hover:bg-red-600 focus:ring focus:ring-red-500 focus:ring-opacity-50 active:bg-red-500 active:border-red-500">
                            <p class="font-semibold text-white">Reset</p>
                        </button>
                        <button wire:click='openModalConfirmation'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500">
                            <p class="font-semibold text-white">Simpan</p>
                        </button>
                    @endif
                </div>
            </div>
        </div>
    </div>


    {{-- Update & Delete Data Modal --}}
    @if ($showFormConfirmation)
        <div class="fixed z-50 inset-0 overflow-y-hidden" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true">
                </div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block bg-white rounded-lg px-4 pt-5 pb-4 overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-center" id="modal-title">
                            @if ($editedCompetition)
                                Ubah
                            @else
                                Hapus
                            @endif data
                        </p>
                        <hr class="my-4">
                        <p class="text-gray-500">Konfirmasi bahwa data @yield('title') yang Anda
                            pilih
                            akan
                            @if ($editedCompetition)
                                diubah
                            @else
                                dihapus
                            @endif
                        </p>
                    </div>
                    <div class="grid gap-4 lg:flex">
                        <button wire:click='closeModalConfirmation'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                            <p class="font-semibold text-red-700">Batal</p>
                        </button>
                        @if ($editedCompetition)
                            <button wire:click.prevent='saveCompetition'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500">
                                <p class="font-semibold text-white">Ubah</p>
                            </button>
                        @else
                            <button wire:click.prevent='deleteCompetition'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-500 hover:bg-red-600 focus:ring focus:ring-red-500 focus:ring-opacity-50 active:bg-red-500 active:border-red-500">
                                <p class="font-semibold text-white">Hapus</p>
                            </button>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
