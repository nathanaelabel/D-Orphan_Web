<div>
    <div class="space-y-8">
        <x-kursus.tutor.detail-tutor.detail-reservasi.breadcrumb>
            <x-slot:page1>Kursus</x-slot:page1>
            <x-slot:page2>Tutor</x-slot:page2>
            <x-slot:page3>Detail Kursus</x-slot:page3>
            <x-slot:page4>Reservasi Kursus</x-slot:page4>
        </x-kursus.tutor.detail-tutor.detail-reservasi.breadcrumb>

        <p class="text-3xl leading-10 font-bold">{{ 'Detail Reservasi Kursus' }}</p>

        <div class="flex p-8 bg-white rounded-2xl shadow">
            <div class="w-full">
                <form method="POST" action="{{ route('/') }}">
                    @csrf

                    <div class="space-y-8">
                        <div>
                            <p class="text-2xl leading-8 font-semibold text-center">Rincian Reservasi Kursus
                            </p>
                            <hr class="my-4">
                            <div class="space-y-4">
                                <p class="text-lg leading-8 font-medium">
                                    Keterangan Tambahan
                                </p>

                                <div class="grid gap-2">
                                    <div class="space-y-1">
                                        <x-label>
                                            <x-slot:for>tanggal_mulai_kursus</x-slot:for>
                                            <x-slot:slot>Tanggal Mulai Kursus</x-slot:slot>
                                        </x-label>
                                        <x-input wire:model="startDate" class="cursor-text">
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
                                        <x-input wire:model="meetingCount" min=1>
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
                                        <x-input wire:model="location">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>lokasi_kursus_luring</x-slot:name>
                                            <x-slot:id>lokasi_kursus_luring</x-slot:id>
                                            <x-slot:placeholder>Jl. Pahlawan No. 2B</x-slot:placeholder>
                                        </x-input>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="space-y-4">
                                <div class="flex justify-between items-center">
                                    <p class="text-lg leading-8 font-medium">
                                        Jadwal Mingguan
                                    </p>
                                    <a wire:click="addDay" class="cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M12 4.5v15m7.5-7.5h-15" />
                                            <title>Tambah</title>
                                        </svg>
                                    </a>
                                </div>
                                <div>
                                    @for ($dayCount; $dayCount > 0; $dayCount--)
                                        <div class="flex gap-4 items-center">
                                            <div class="grid w-full gap-4">
                                                {{-- Hari --}}
                                                <div class="gap-1">
                                                    <x-label>
                                                        <x-slot:for>hari_mulai{{ $dayCount }}</x-slot:for>
                                                        <x-slot:slot>Hari</x-slot:slot>
                                                    </x-label>
                                                    <x-kursus.tutor.detail-tutor.detail-reservasi.select>
                                                        <x-slot:id>hari_mulai{{ $dayCount }}</x-slot:id>
                                                        <x-slot:name>hari_mulai{{ $dayCount }}</x-slot:name>
                                                        <x-slot:wiremodel>hari_mulai.{{ $dayCount }}.a
                                                        </x-slot:wiremodel>
                                                        <x-slot:option>
                                                            <option selected>Select A Day
                                                            </option>
                                                            @foreach ($days as $item)
                                                                <option value="{{ $item->id }}">{{ $item->day }}
                                                                </option>
                                                            @endforeach
                                                        </x-slot:option>

                                                    </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                                                </div>
                                            </div>
                                            <div class="grid w-full gap-4">
                                                {{-- Jam Mulai --}}
                                                <div class="gap-1">
                                                    <x-label>
                                                        <x-slot:for>jam mulai{{ $dayCount }}</x-slot:for>
                                                        <x-slot:slot>Jam Mulai</x-slot:slot>
                                                    </x-label>
                                                    <x-input wire:model="jam_mulai.{{ $dayCount }}.a">
                                                        <x-slot:type>time</x-slot:type>
                                                        <x-slot:name>jam_mulai{{ $dayCount }}</x-slot:name>
                                                        <x-slot:id>jam_mulai{{ $dayCount }}</x-slot:id>
                                                        <x-slot:placeholder>07.30</x-slot:placeholder>
                                                    </x-input>
                                                </div>
                                            </div>
                                            <div class="grid w-full gap-4">
                                                {{-- Jam Berakhir --}}
                                                <div class="gap-1">
                                                    <x-label>
                                                        <x-slot:for>jam berakhir{{ $dayCount }}</x-slot:for>
                                                        <x-slot:slot>Jam Berakhir</x-slot:slot>
                                                    </x-label>
                                                    <x-input wire:model="jam_berakhir.{{ $dayCount }}.a">
                                                        <x-slot:type>time</x-slot:type>
                                                        <x-slot:name>jam_berakhir{{ $dayCount }}</x-slot:name>
                                                        <x-slot:id>jam_berakhir{{ $dayCount }}</x-slot:id>
                                                        <x-slot:placeholder>08.30</x-slot:placeholder>
                                                    </x-input>
                                                </div>
                                            </div>
                                            <div>
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                    class="w-6 h-6 text-red-500 cursor-pointer">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                        d="M6 18L18 6M6 6l12 12" />
                                                    <title>Hapus</title>
                                                </svg>
                                            </div>
                                        </div>

                                    @endfor
                                </div>
                            </div>

                        </div>
                        <div>
                            <div class="space-y-4">
                                <div class="flex justify-between items-center">
                                    <p class="text-lg leading-8 font-medium">
                                        Peserta Kursus
                                    </p>

                                </div>

                                <div class="space-y-1">

                                    <x-label>
                                        <x-slot:for>nama_peserta_kursus</x-slot:for>
                                        <x-slot:slot>Nama Peserta Kursus</x-slot:slot>
                                    </x-label>
                                    <div class="flex gap-4 justify-between items-center">
                                        <x-kursus.tutor.detail-tutor.detail-reservasi.select
                                            wire:model="currentStudent">
                                            <x-slot:id>nama_peserta_kursus</x-slot:id>
                                            <x-slot:name>nama_peserta_kursus</x-slot:name>
                                            <x-slot:option>
                                                @foreach (Auth::user()->orphanage->orphans as $item)
                                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                @endforeach
                                            </x-slot:option>
                                        </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                                        <a wire:click="addStudent({{ $currentStudent }})" class="cursor-pointer">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M12 4.5v15m7.5-7.5h-15" />
                                                <title>Tambah</title>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div>

                                    <ol class="list-decimal list-inside">
                                        @foreach ($studentList as $item)
                                            <li>{{ $item->name }}</li>
                                        @endforeach

                                    </ol>
                                </div>
                            </div>
                        </div>
                        Harga Total = {{ $totalPrice }}
                        <div>
                            <x-primary-button wire:click="save">{{ __('Kirim Reservasi') }}</x-primary-button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
