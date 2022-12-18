<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.detail-tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
        <x-slot:page3>Profil Tutor</x-slot:page3>
        <x-slot:page4>Detail Reservasi</x-slot:page4>
    </x-kursus.tutor.detail-tutor.breadcrumb>

    {{-- Title --}}
    <h3 class="text-3xl leading-10 font-bold">{{ 'Detail Reservasi' }}</h3>

    <div class="flex p-8 bg-white rounded-2xl shadow">
        <div class="w-full space-y-8">
            <p class="text-lg leading-8 font-semibold text-gray-700">
                Peserta Kursus
            </p>
            <form method="POST" action="{{ route('donasi') }}">
                @csrf

                <div class="space-y-8">
                    <div class="space-y-1 gap-6">
                        <x-label>
                            <x-slot:for>nama_peserta_kursus</x-slot:for>
                            <x-slot:slot>Nama Peserta Kursus</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-kursus.tutor.detail-tutor.detail-reservasi.select>
                            <x-slot:id>nama_peserta_kursus</x-slot:id>
                            <x-slot:name>nama_peserta_kursus</x-slot:name>
                            <x-slot:option1>Ilham Kurniawan</x-slot:option1>
                            <x-slot:option2>Tono Andika</x-slot:option2>
                            <x-slot:option3>Budi Santoso</x-slot:option3>
                        </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                    </div>

                    <p class="text-lg leading-8 font-semibold text-gray-700">
                        Keterangan Lainnya
                    </p>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>tanggal_mulai_kursus</x-slot:for>
                            <x-slot:slot>Tanggal Mulai Kursus</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-input>
                            <x-slot:type>date</x-slot:type>
                            <x-slot:name>tanggal_mulai_kursus</x-slot:name>
                            <x-slot:id>tanggal_mulai_kursus</x-slot:id>
                            <x-slot:placeholder>01/11/2022</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>total_jumlah_pertemuan</x-slot:for>
                            <x-slot:slot>Total Jumlah Pertemuan</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-input>
                            <x-slot:type>text</x-slot:type>
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
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-input>
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>lokasi_kursus_luring</x-slot:name>
                            <x-slot:id>lokasi_kursus_luring</x-slot:id>
                            <x-slot:placeholder>Sinar Bangsa</x-slot:placeholder>
                        </x-input>
                    </div>

                    <p class="text-lg leading-8 font-semibold text-gray-700">
                        Jadwal Mingguan
                    </p>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>hari</x-slot:for>
                            <x-slot:slot>Hari</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-kursus.tutor.detail-tutor.detail-reservasi.select>
                            <x-slot:id>hari</x-slot:id>
                            <x-slot:name>hari</x-slot:name>
                            <x-slot:option1>Senin</x-slot:option1>
                            <x-slot:option2>Selasa</x-slot:option2>
                            <x-slot:option3>Rabu</x-slot:option3>
                            {{-- <x-slot:option4>Kamis</x-slot:option4>
                            <x-slot:option5>Jumat</x-slot:option5>
                            <x-slot:option6>Sabtu</x-slot:option6>
                            <x-slot:option7>Minggu</x-slot:option7> --}}
                        </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                    </div>
                    <div class="text-sm text-red-700">
                        <span>&#42;</span>
                        <span>Wajib diisi</span>
                    </div>
                </div>

                <div class="mt-6">
                    <x-primary-button>{{ __('Kirim') }}</x-primary-button>
                </div>
            </form>
        </div>
    </div>
</div>
