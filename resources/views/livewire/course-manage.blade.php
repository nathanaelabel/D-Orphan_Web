@section('title', 'Kelola Kursus')

<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Atur kursus yang Anda sediakan' }}</p>
        </div>
        @if (count($coursesTutors) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M3 13.125C3 12.504 3.504 12 4.125 12h2.25c.621 0 1.125.504 1.125 1.125v6.75C7.5 20.496 6.996 21 6.375 21h-2.25A1.125 1.125 0 013 19.875v-6.75zM9.75 8.625c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125v11.25c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 01-1.125-1.125V8.625zM16.5 4.125c0-.621.504-1.125 1.125-1.125h2.25C20.496 3 21 3.504 21 4.125v15.75c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 01-1.125-1.125V4.125z" />
                        <title>Jumlah kursus tersedia</title>
                    </svg>
                    {{ count($coursesTutors) . ' kursus tersedia' }}
                </span>
            </div>
        @endif
    </div>

    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Kursus</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="search_kelola" id="search_kelola"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Kursus" wire:model="categoryKelolaSearch" />
        </div>

        {{-- Dropdown Sort --}}
        <select id="sort_category_kelola" name="sort_category_kelola" wire:model="categoryKelolaDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            @if (count($skills) == 0)
                <option "selected">Tidak Ada Keahlian</option>
            @else
                @foreach ($skills as $itemSkill)
                    <option value="{{ $itemSkill->name }}"
                        {{ $categoryKelolaDropdownSort == $itemSkill->name ? 'selected' : null }}>
                        {{ $itemSkill->name }}
                    </option>
                @endforeach
            @endif
        </select>

        {{-- Tambah Kursus --}}
        <a wire:click.prevent='toggleForm' class="cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-blue-500">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                <title>Tambah</title>
            </svg>
        </a>
    </div>

    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Nama Kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Batas Jumlah Peserta</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tipe Kehadiran</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tarif Per Jam</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Harga Sewa Alat</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold"></th>
                </tr>
            </thead>
            @empty($coursesTutors)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="6" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>{{ 'Belum ada kursus yang disediakan' }}</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($coursesTutors as $index => $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['name'] }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.name">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>name</x-slot:name>
                                        <x-slot:id>name</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ $item['maximum_member'] . ' Anak' }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.maximum_member">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>maximum_member</x-slot:name>
                                        <x-slot:id>maximum_member</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                <div>
                                    @if ($editedCourseTutorIndex !== $index)
                                        @if ($item['is_online'] == 1)
                                            Daring
                                        @else
                                            Luring
                                        @endif
                                    @else
                                        <x-input wire:model.defer="coursesTutors.{{ $index }}.is_online">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>is_online</x-slot:name>
                                            <x-slot:id>is_online</x-slot:id>
                                            <x-slot:placeholder></x-slot:placeholder>
                                        </x-input>
                                    @endif

                                    @if ($editedCourseTutorIndex !== $index)
                                        @if ($item['is_visit'] == 1)
                                            Mendatangi
                                        @else
                                            Didatangi
                                        @endif
                                    @else
                                        <x-input wire:model.defer="coursesTutors.{{ $index }}.is_visit">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>is_visit</x-slot:name>
                                            <x-slot:id>is_visit</x-slot:id>
                                            <x-slot:placeholder></x-slot:placeholder>
                                        </x-input>
                                    @endif
                                </div>
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ 'Rp' . number_format($item['hourly_price'], 2, ',', '.') }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.hourly_price">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>hourly_price</x-slot:name>
                                        <x-slot:id>hourly_price</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedCourseTutorIndex !== $index)
                                    {{ 'Rp' . number_format($item['tool_price'], 2, ',', '.') }}
                                @else
                                    <x-input wire:model.defer="coursesTutors.{{ $index }}.tool_price">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>tool_price</x-slot:name>
                                        <x-slot:id>tool_price</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                @if (is_null($editedCourseTutorIndex))
                                    {{-- Selengkapnya --}}
                                    <button wire:click="redirectDetail({{ $item['id'] }})">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M13.5 6H5.25A2.25 2.25 0 003 8.25v10.5A2.25 2.25 0 005.25 21h10.5A2.25 2.25 0 0018 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" />
                                            <title>Lihat detail</title>
                                        </svg>
                                    </button>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endempty
        </table>
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
                            @if ($keterangan == 'ubah')
                                Ubah
                            @elseif($keterangan == 'hapus')
                                Hapus
                            @endif data
                        </p>
                        <hr class="my-4">
                        <p class="text-gray-500">Konfirmasi bahwa data @yield('title') yang Anda
                            pilih
                            akan
                            @if ($keterangan == 'ubah')
                                diubah
                            @elseif($keterangan == 'hapus')
                                dihapus
                            @endif
                        </p>
                    </div>
                    <div class="grid gap-4 lg:flex">
                        <button wire:click.prevent='closeModalConfirmation'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                            <p class="font-semibold text-red-700">Batal</p>
                        </button>
                        @if ($keterangan == 'ubah')
                            <button wire:click.prevent='saveCourseTutor'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500">
                                <p class="font-semibold text-white">Ubah</p>
                            </button>
                        @elseif($keterangan == 'hapus')
                            <button wire:click.prevent='deleteCourseTutor'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-500 hover:bg-red-600 focus:ring focus:ring-red-500 focus:ring-opacity-50 active:bg-red-500 active:border-red-500">
                                <p class="font-semibold text-white">Hapus</p>
                            </button>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endif

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
                        <p class="text-2xl leading-8 font-semibold text-center" id="modal-title">Tambah Kursus</p>
                        <hr class="my-4">
                        {{-- Tambah Kursus Form --}}
                        <form wire:submit.prevent="addData">
                            <div class="grid gap-2">
                                <div class="grid gap-2 lg:flex">
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
                                        <x-input wire:model="name" required>
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
                                        <x-input wire:model="hourly_price" min="10000" required>
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
                                        <x-input wire:model="maximum_member" min="3" required>
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
                                    <x-input wire:model="location" required>
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
                                        <x-textarea wire:model="description" required>
                                            <x-slot:maxlength>255</x-slot:maxlength>
                                            <x-slot:placeholder>Masukkan deskripsi kursus</x-slot:placeholder>
                                        </x-textarea>
                                    </div>
                                    <div class="text-sm text-red-700">
                                        <span>&#42;</span>
                                        <span>Wajib diisi</span>
                                    </div>
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
