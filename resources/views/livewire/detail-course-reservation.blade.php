<div class="space-y-8">
    <x-kursus.tutor.detail-tutor.detail-reservasi.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
        <x-slot:page3>Detail Kursus</x-slot:page3>
        <x-slot:page4>Reservasi Kursus</x-slot:page4>
    </x-kursus.tutor.detail-tutor.detail-reservasi.breadcrumb>

    <p class="text-3xl leading-10 font-bold">{{ 'Detail Reservasi' }}</p>

    <div class="flex p-8 bg-white rounded-2xl shadow">
        <div class="w-full space-y-8">
            <div class="space-y-4">
<<<<<<< HEAD
=======
                <div class="flex justify-between items-center">
                    <p class="text-lg leading-8 font-semibold text-gray-700">
                        Peserta Kursus
                    </p>
                    <a wire:click='' class="cursor-pointer" title="Tambah">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-blue-500">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        </svg>
                    </a>
                </div>
                <form method="POST" action="{{ route('dasbor') }}">
                    @csrf
>>>>>>> 872ac09db747d95d98e59428e7a0b393946c2ebf

            </div>
            <div class="space-y-4">
                <p class="text-lg leading-8 font-semibold text-gray-700">
                    Keterangan Lainnya
                </p>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>tanggal_mulai_kursus</x-slot:for>
                        <x-slot:slot>Tanggal Mulai Kursus</x-slot:slot>
                    </x-label>
                    <x-input class="cursor-text">
                        <x-slot:type>date</x-slot:type>
                        <x-slot:name>tanggal_mulai_kursus</x-slot:name>
                        <x-slot:id>tanggal_mulai_kursus</x-slot:id>
                        <x-slot:placeholder>HH/BB/TTTT</x-slot:placeholder>
                    </x-input>
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>total_jumlah_pertemuan</x-slot:for>
                        <x-slot:slot>Total Jumlah Pertemuan</x-slot:slot>
                    </x-label>
                    <x-input>
                        <x-slot:type>number</x-slot:type>
                        <x-slot:name>total_jumlah_pertemuan</x-slot:name>
                        <x-slot:id>total_jumlah_pertemuan</x-slot:id>
                        <x-slot:placeholder>20</x-slot:placeholder>
                    </x-input>
                </div>

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>lokasi_kursus_luring</x-slot:for>
                        <x-slot:slot>Lokasi Kursus Luring</x-slot:slot>
                    </x-label>
                    <x-input>
                        <x-slot:type>text</x-slot:type>
                        <x-slot:name>lokasi_kursus_luring</x-slot:name>
                        <x-slot:id>lokasi_kursus_luring</x-slot:id>
                        <x-slot:placeholder>Jl. Pahlawan No. 2B</x-slot:placeholder>
                    </x-input>
                </div>
            </div>
            <div class="space-y-4">
                <div class="flex justify-between items-center">
                    <p class="text-lg leading-8 font-semibold text-gray-700">
                        Jadwal Mingguan
                    </p>
<<<<<<< HEAD
                    <x-primary-button wire:click="addDay" class="w-fit">{{ __('Tambah Jadwal') }}</x-primary-button>
=======
                    <a wire:click='' class="cursor-pointer" title="Tambah">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-blue-500">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        </svg>
                    </a>
>>>>>>> 872ac09db747d95d98e59428e7a0b393946c2ebf
                </div>
                @for ($dayCount; $dayCount > 0; $dayCount--)
                    <div class="flex gap-4 items-center">
                        <div class="grid w-full gap-4">
                            {{-- Hari --}}
                            <div class="gap-1">
                                <x-label>
                                    <x-slot:for>hari_mulai</x-slot:for>
                                    <x-slot:slot>Hari</x-slot:slot>
                                </x-label>
                                <x-kursus.tutor.detail-tutor.detail-reservasi.select>
                                    <x-slot:id>hari_mulai</x-slot:id>
                                    <x-slot:name>hari_mulai</x-slot:name>
                                    <x-slot:option>
                                        @foreach ($days as $item)
                                            <option>{{ $item->day }}</option>
                                        @endforeach
                                    </x-slot:option>


                                </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                            </div>
                        </div>
                        <div class="grid w-full gap-4">
                            {{-- Jam Mulai --}}
                            <div class="gap-1">
                                <x-label>
                                    <x-slot:for>jam mulai</x-slot:for>
                                    <x-slot:slot>Jam Mulai</x-slot:slot>
                                </x-label>
                                <x-input>
                                    <x-slot:type>time</x-slot:type>
                                    <x-slot:name>jam_mulai</x-slot:name>
                                    <x-slot:id>jam_mulai</x-slot:id>
                                    <x-slot:placeholder>07.30</x-slot:placeholder>
                                </x-input>
                            </div>
                        </div>
                        <div class="grid w-full gap-4">
                            {{-- Jam Berakhir --}}
                            <div class="gap-1">
                                <x-label>
                                    <x-slot:for>jam berakhir</x-slot:for>
                                    <x-slot:slot>Jam Berakhir</x-slot:slot>
                                </x-label>
                                <x-input>
                                    <x-slot:type>time</x-slot:type>
                                    <x-slot:name>jam_berakhir</x-slot:name>
                                    <x-slot:id>jam_berakhir</x-slot:id>
                                    <x-slot:placeholder>08.30</x-slot:placeholder>
                                </x-input>
                            </div>
                        </div>
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </div>
                    </div>
                @endfor

            </div>
            <div class="flex justify-between">
                <p class="text-lg leading-8 font-semibold text-gray-700">
                    Peserta Kursus
                </p>
            </div>

            <div class="space-y-8">
                <div class="space-y-1 gap-6">
                    <x-label>
                        <x-slot:for>nama_peserta_kursus</x-slot:for>
                        <x-slot:slot>Nama Peserta Kursus</x-slot:slot>
                    </x-label>
                    <div class="flex gap-5 justify-between items-center">
                        <x-kursus.tutor.detail-tutor.detail-reservasi.select wire:model="currentStudent">
                            <x-slot:id>nama_peserta_kursus</x-slot:id>
                            <x-slot:name>nama_peserta_kursus</x-slot:name>
                            <x-slot:option>
                                @foreach (Auth::user()->orphanage->orphans as $item)
                                    <option value="{{$item->id}}">{{ $item->name }}</option>
                                @endforeach
                            </x-slot:option>

                        </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                        <x-primary-button wire:click="addStudent({{$currentStudent}})" class=" w-max">{{ __('Tambah Peserta') }}</x-primary-button>

                    </div>
                    @foreach ($studentList as $item)
{{                        $item->name
}}                    @endforeach
                </div>
            </div>


            <div class="mt-6">
                <x-primary-button>{{ __('Kirim Reservasi') }}</x-primary-button>
            </div>
        </div>
    </div>
</div>
