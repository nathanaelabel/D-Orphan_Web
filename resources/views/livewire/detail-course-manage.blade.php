@section('title', 'Detail Kelola Kursus')

<div class="space-y-8">
    {{-- <x-lomba.detail-lomba.breadcrumb>
        <x-slot:page1>Lomba</x-slot:page1>
        <x-slot:page2>Detail Kelola Kursus</x-slot:page2>
    </x-lomba.detail-lomba.breadcrumb> --}}

    <p class="text-3xl leading-10 font-bold">{{ 'Detail Kelola Kursus' }}</p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        @if ($editedCourse)
            <div class="w-full self-center">
                <div class="grid gap-4 p-4 lg:p-8">
                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>skill</x-slot:for>
                            <x-slot:slot>Kategori Kursus</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <select wire:model="skill_id"
                            class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 pl-3 pr-10 py-2 cursor-pointer">
                            @foreach ($allSkills as $skill)
                                <option value="{{ $skill->id }}">
                                    {{ $skill->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="space-y-1 w-full">
                        <x-label>
                            <x-slot:for>name</x-slot:for>
                            <x-slot:slot>Nama Kursus</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-input wire:model="name">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>name</x-slot:name>
                            <x-slot:id>name</x-slot:id>
                            <x-slot:placeholder>Nama Kursus</x-slot:placeholder>
                        </x-input>
                    </div>
                    <div class="grid gap-2 lg:flex">
                        <div class="space-y-1 w-full">
                            <x-label>
                                <x-slot:for>hourly_price</x-slot:for>
                                <x-slot:slot>Tarif Per Jam</x-slot:slot>
                            </x-label>
                            <span class="text-sm text-red-700">&#42;</span>
                            <x-input wire:model="hourly_price" min="10000">
                                <x-slot:type>number</x-slot:type>
                                <x-slot:name>hourly_price</x-slot:name>
                                <x-slot:id>hourly_price</x-slot:id>
                                <x-slot:placeholder>Tarif Per Jam</x-slot:placeholder>
                            </x-input>
                        </div>
                        <div class="space-y-1 w-full">
                            <x-label>
                                <x-slot:for>maximum_member</x-slot:for>
                                <x-slot:slot>Batas Jumlah Peserta</x-slot:slot>
                            </x-label>
                            <span class="text-sm text-red-700">&#42;</span>
                            <x-input wire:model="maximum_member" min="3">
                                <x-slot:type>number</x-slot:type>
                                <x-slot:name>maximum_member</x-slot:name>
                                <x-slot:id>maximum_member</x-slot:id>
                                <x-slot:placeholder>Batas Jumlah Peserta</x-slot:placeholder>
                            </x-input>
                        </div>
                        <div class="space-y-1 w-full">
                            <x-label>
                                <x-slot:for>tool_price</x-slot:for>
                                <x-slot:slot>Harga Sewa Alat</x-slot:slot>
                            </x-label>
                            <x-input wire:model="tool_price" min="0">
                                <x-slot:type>number</x-slot:type>
                                <x-slot:name>tool_price</x-slot:name>
                                <x-slot:id>tool_price</x-slot:id>
                                <x-slot:placeholder>Harga Sewa Alat</x-slot:placeholder>
                            </x-input>
                        </div>
                    </div>
                    <div class="grid gap-2 lg:flex">
                        <div class="space-y-1 w-full">
                            <x-label>
                                <x-slot:for>is_online</x-slot:for>
                                <x-slot:slot>Daring Didatangi</x-slot:slot>
                            </x-label>
                            <span class="text-sm text-red-700">&#42;</span>
                            <div class="flex gap-6 mt-1">
                                <div class="flex gap-2 cursor-pointer items-center w-full lg:w-fit">
                                    <input wire:model.defer="is_online" id="is_online-tidak"
                                        class="peer/is_online-tidak checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                        type="radio" name="is_online" value="0"
                                        @if (count(request()->query()) == 0) checked @endif />
                                    <label for="is_online-tidak"
                                        class="peer-checked/is_online-tidak:text-blue-500 cursor-pointer">Tidak</label>
                                </div>
                                <div class="flex gap-2 cursor-pointer items-center w-full lg:w-fit">
                                    <input wire:model.defer="is_online" id="is_online-ya"
                                        class="peer/is_online-ya checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                        type="radio" name="is_online" value="1"
                                        @if (count(request()->query()) > 0) checked @endif />
                                    <label for="is_online-ya"
                                        class="peer-checked/is_online-ya:text-blue-500 cursor-pointer">Ya</label>
                                </div>
                            </div>
                        </div>
                        <div class="space-y-1 w-full">
                            <x-label>
                                <x-slot:for>is_visit</x-slot:for>
                                <x-slot:slot>Luring Didatangi</x-slot:slot>
                            </x-label>
                            <span class="text-sm text-red-700">&#42;</span>
                            <div class="flex gap-6 mt-1">
                                <div class="flex gap-2 cursor-pointer items-center w-full lg:w-fit">
                                    <input wire:model.defer="is_visit" id="is_visit-tidak"
                                        class="peer/is_visit-tidak checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                        type="radio" name="is_visit" value="0"
                                        @if (count(request()->query()) == 0) checked @endif />
                                    <label for="is_visit-tidak"
                                        class="peer-checked/is_visit-tidak:text-blue-500 cursor-pointer">Tidak</label>
                                </div>
                                <div class="flex gap-2 cursor-pointer items-center w-full lg:w-fit">
                                    <input wire:model.defer="is_visit" id="is_visit-ya"
                                        class="peer/is_visit-ya checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                        type="radio" name="is_visit" value="1"
                                        @if (count(request()->query()) > 0) checked @endif />
                                    <label for="is_visit-ya"
                                        class="peer-checked/is_visit-ya:text-blue-500 cursor-pointer">Ya</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="space-y-1 w-full">
                        <x-label>
                            <x-slot:for>location</x-slot:for>
                            <x-slot:slot>Lokasi</x-slot:slot>
                        </x-label>
                        <span class="text-sm text-red-700">&#42;</span>
                        <x-input wire:model="location">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>location</x-slot:name>
                            <x-slot:id>location</x-slot:id>
                            <x-slot:placeholder>Lokasi</x-slot:placeholder>
                        </x-input>
                    </div>
                    <div>
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
                                <x-slot:slot>Deskripsi Kursus</x-slot:slot>
                            </x-label>
                            <span class="text-sm text-red-700">&#42;</span>
                            <x-textarea wire:model="description">
                                <x-slot:maxlength>255</x-slot:maxlength>
                                <x-slot:placeholder>Masukkan deskripsi kursus</x-slot:placeholder>
                            </x-textarea>
                        </div>

                        <div class="mt-4">
                            <button wire:click.prevent='saveCourse'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                                <p class="font-semibold text-white">Simpan</p>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        @else
            <div class="w-full self-center">
                <div class="grid gap-4 p-4 lg:p-8">
                    <p class="text-2xl leading-8 font-semibold text-gray-900">
                        {{ $course->name }}
                    </p>

                    <div class="flex">
                        <span
                            class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                            <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor" viewBox="0 0 8 8">
                                <circle cx="4" cy="4" r="3" />
                            </svg>
                            {{ $course->skill->name }}
                        </span>
                    </div>

                    <div class="grid gap-1">
                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                <title>Tarif per jam</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ 'Rp' . number_format($course['hourly_price'], 2, ',', '.') . '/jam' }}
                                @if ($course->tool_price == 0)
                                @else
                                    &#40;termasuk biaya sewa peralatan
                                    {{ 'Rp' . number_format($course['tool_price'], 2, ',', '.') }}&#41;
                                @endif
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                                <title>Batas maksimum peserta kursus<< /title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $course['maximum_member'] }} anak/Panti
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            @if ($course['is_online == 1'])
                                <div class="flex gap-2 items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                                        <title>Tipe kehadiran</title>
                                    </svg>
                                    <p class="text-lg leading-8 text-gray-700">Daring</p>
                                </div>
                            @else
                                <div class="flex gap-2 items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M3 3l8.735 8.735m0 0a.374.374 0 11.53.53m-.53-.53l.53.53m0 0L21 21M14.652 9.348a3.75
                                        3.75 0 010 5.304m2.121-7.425a6.75 6.75 0 010 9.546m2.121-11.667c3.808 3.807 3.808
                                        9.98 0
                                        13.788m-9.546-4.242a3.733 3.733 0 01-1.06-2.122m-1.061 4.243a6.75 6.75 0
                                        01-1.625-6.929m-.496 9.05c-3.068-3.067-3.664-7.67-1.79-11.334M12 12h.008v.008H12V12z" />
                                        <title>Tipe kehadiran</title>
                                    </svg>
                                    <p class="text-lg leading-8 text-gray-700">
                                        @if ($course['is_visit == 1'])
                                            Luring Didatangi &#40;Kursus bisa dilaksanakan di lokasi Panti Asuhan&#41;
                                        @else
                                            Luring Mendatangi &#40;Kursus tidak dilaksanakan di lokasi Panti Asuhan&#41;
                                        @endif
                                    </p>
                                </div>
                            @endif
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                                <title>Lokasi</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $course['location'] }}
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M21 7.5l-9-5.25L3 7.5m18 0l-9 5.25m9-5.25v9l-9 5.25M3 7.5l9 5.25M3 7.5v9l9 5.25m0-9v9" />
                                <title>Deskripsi sewa peralatan</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $course['tool_description'] }}
                            </p>
                        </div>
                    </div>

                    <p class="text-gray-500">{{ $course['description'] }}</p>
                    <hr>
                    <p class="text-sm text-gray-500">
                        {{ 'Diperbarui pada ' . date_format(date_create($course['updated_at']), 'l, d F Y, H:i A') }}
                    </p>
                </div>
            </div>
    </div>

    <div class="grid gap-4 lg:flex">
        <button wire:click='deleteCourse'
            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
            <p class="font-semibold text-red-700">Hapus</p>
        </button>
        <button wire:click='editCourse'
            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500">
            <p class="font-semibold text-white">Ubah</p>
        </button>
    </div>
    @endif
</div>
