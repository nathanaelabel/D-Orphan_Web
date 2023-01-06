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
                    {{-- <div class="space-y-1">
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
                    </div> --}}
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

                    <button wire:click.prevent='saveCourse'
                        class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                        <a href="{{ route('detail-course-manage', $course['id']) }}">
                            <p class="font-semibold text-white">Simpan</p>
                    </button>
                </div>

            </div>
        @else
            <div class="w-full self-center">
                <div class="grid gap-4 p-4 lg:p-8">
                    <p class="text-2xl leading-8 font-semibold text-gray-900">
                        {{ $course->name }}
                    </p>

                    <div class="grid gap-1">
                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                                <title>Tarif Per Jam</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ 'Rp' . number_format($course['hourly_price'], 2, ',', '.') }}
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                                <title>Batas Jumlah Peserta</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $course['maximum_member'] }}
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z" />
                                <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z" />
                                <title>Tipe Kehadiran</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                @if ($course['is_online'] == 1)
                                    Daring
                                @else
                                    Luring
                                @endif
                            </p>
                        </div>

                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M18 18.72a9.094 9.094 0 003.741-.479 3 3 0 00-4.682-2.72m.94 3.198l.001.031c0 .225-.012.447-.037.666A11.944 11.944 0 0112 21c-2.17 0-4.207-.576-5.963-1.584A6.062 6.062 0 016 18.719m12 0a5.971 5.971 0 00-.941-3.197m0 0A5.995 5.995 0 0012 12.75a5.995 5.995 0 00-5.058 2.772m0 0a3 3 0 00-4.681 2.72 8.986 8.986 0 003.74.477m.94-3.197a5.971 5.971 0 00-.94 3.197M15 6.75a3 3 0 11-6 0 3 3 0 016 0zm6 3a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0zm-13.5 0a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0z" />
                                <title>Visit</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                @if ($course['is_visit'] == 1)
                                    Mendatangi
                                @else
                                    Didatangi
                                @endif
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
                                <title>Lokasi</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">
                                {{ $course['location'] }}
                            </p>
                        </div>
                    </div>

                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Harga Sewa Alat</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ 'Rp' . number_format($course['tool_price'], 2, ',', '.') }}
                        </p>
                    </div>

                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Deskripsi Sewa Alat</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ $course['tool_description'] }}
                        </p>
                    </div>

                    <p class="text-gray-500">{{ $course['description'] }}</p>

                    <div>
                        <a href="{{ $course['url'] }}" target="_blank" rel="noopener noreferrer">
                            <x-primary-button>Tautan Lomba</x-primary-button>
                        </a>
                    </div>
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
