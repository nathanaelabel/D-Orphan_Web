<div class="space-y-8">
    <a href="{{ URL::previous() }}">
        <x-back-button class="w-fit">Kembali</x-back-button>
    </a>

    <p class="text-3xl leading-10 font-bold">{{ 'Tambah Kursus' }}</p>

    <div class="flex p-8 bg-white rounded-2xl shadow">
        <div class="w-full space-y-8">

            <form method="POST" action="{{ route('/') }}">
                @csrf

                {{-- <div class="space-y-8">
                        <div class="space-y-1 gap-6">
                            <x-label>
                                <x-slot:for>kategori_kursus</x-slot:for>
                                <x-slot:slot>Kategori Kursus</x-slot:slot>
                            </x-label>
                            <x-kursus.tutor.detail-tutor.detail-reservasi.select>
                                <x-slot:id>kategori_kursus</x-slot:id>
                                <x-slot:name>kategori_kursus</x-slot:name>
                                <x-slot:option>
                                    @foreach (Auth::user()->orphanage->orphans as $item)
                                        <option>{{ $item->name }}</option>
                                    @endforeach
                                </x-slot:option>
                            </x-kursus.tutor.detail-tutor.detail-reservasi.select>
                        </div>
                    </div> --}}

                <div class="space-y-4">
                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>tarif_per_jam</x-slot:for>
                            <x-slot:slot>Tarif Per Jam</x-slot:slot>
                        </x-label>
                        <div class="relative">
                            <div
                                class="absolute inset-y-0 left-0 pl-3 text-gray-700 flex items-center pointer-events-none">
                                <p>Rp</p>
                            </div>
                            <x-input class="pl-10">
                                <x-slot:type>number</x-slot:type>
                                <x-slot:name>tarif_per_jam</x-slot:name>
                                <x-slot:id>tarif_per_jam</x-slot:id>
                                <x-slot:placeholder>xxxxxx</x-slot:placeholder>
                            </x-input>
                        </div>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>lokasi</x-slot:for>
                            <x-slot:slot>Lokasi</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>lokasi</x-slot:name>
                            <x-slot:id>lokasi</x-slot:id>
                            <x-slot:placeholder>Surabaya</x-slot:placeholder>
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

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>batas_peserta_kursus</x-slot:for>
                            <x-slot:slot>Batas Peserta Kursus</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>number</x-slot:type>
                            <x-slot:name>batas_peserta_kursus</x-slot:name>
                            <x-slot:id>batas_peserta_kursus</x-slot:id>
                            <x-slot:placeholder>15</x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>durasi_kursus</x-slot:for>
                            <x-slot:slot>Durasi Kursus</x-slot:slot>
                        </x-label>
                        <x-input>
                            <x-slot:type>number</x-slot:type>
                            <x-slot:name>durasi_kursus</x-slot:name>
                            <x-slot:id>durasi_kursus</x-slot:id>
                            <x-slot:placeholder>3</x-slot:placeholder>
                        </x-input>
                    </div>
                </div>

                <div class="mt-6">
                    <x-primary-button>{{ __('Tambah Kursus') }}</x-primary-button>
                </div>
            </form>
        </div>
    </div>
</div>
