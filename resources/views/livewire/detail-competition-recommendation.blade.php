@section('title', 'Detail Lomba')

<div class="space-y-8">
    <x-lomba.detail-lomba.breadcrumb>
        <x-slot:page1>Lomba</x-slot:page1>
        <x-slot:page2>Detail Lomba</x-slot:page2>
    </x-lomba.detail-lomba.breadcrumb>

    <p class="text-3xl leading-10 font-bold">{{ 'Detail Lomba' }}</p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-6/12">
            <img src="{{ auth()->user()->orphanage ? $competitionRecommendation->competition->photo_url : $competitionRecommendation->photo_url }}"
                alt="Lomba"
                class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none"
                onerror="this.onerror=null;this.src='/img/placeholder.svg';">
        </div>

        <div class="w-fit self-center">
            <div class="grid gap-4 p-4 lg:p-8">
                <p class="text-2xl leading-8 font-semibold text-gray-900">
                    {{ auth()->user()->orphanage ? $competitionRecommendation->competition->name : $competitionRecommendation->name }}
                </p>

                <div class="grid">
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                            <title>Tanggal pendaftaran dimulai</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ date_format(date_create(auth()->user()->orphanage ? $competitionRecommendation->competition->registration_start_date : $competitionRecommendation->registration_start_date), 'd/m/Y') }}
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Jam pendaftaran dimulai</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ date_format(date_create(auth()->user()->orphanage ? $competitionRecommendation->competition->registration_start_hour : $competitionRecommendation->registration_start_hour), 'H:i') . ' WIB' }}
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z" />
                            <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z" />
                            <title>Jenjang</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ auth()->user()->orphanage ? $competitionRecommendation->competition->level : $competitionRecommendation->level }}
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z" />
                            <path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z" />
                            <title>Penyelenggara</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700"> Penyelenggara:
                            {{ auth()->user()->orphanage ? $competitionRecommendation->competition->organizer : $competitionRecommendation->organizer }}
                        </p>
                    </div>
                </div>

                <p class="text-gray-500">
                    {{ auth()->user()->orphanage ? $competitionRecommendation->competition->description : $competitionRecommendation->description }}
                </p>

                <a href="{{ auth()->user()->orphanage ? $competitionRecommendation->competition->url : $competitionRecommendation->url }}"
                    target="_blank" rel="noopener noreferrer">
                    <x-primary-button>Tautan Lomba</x-primary-button>
                </a>
            </div>
        </div>
    </div>

    @if (auth()->user()->orphanage)
        <details open class="space-y-2">
            <summary class="text-xl leading-8 font-semibold">
                Rekomendasi
            </summary>

            <div class="overflow-x-auto shadow rounded">
                <table class="min-w-full">
                    <thead class="bg-gray-500 text-white">
                        <tr>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                No.</th>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                                Nama Anak</th>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                                Dari Tutor</th>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                                Deskripsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($orphanCrs as $item)
                            <tr class="odd:bg-white even:bg-gray-100">
                                <td class="whitespace-nowrap px-3 py-4 w-fit">{{ $loop->iteration }}</td>
                                <td class="whitespace-nowrap px-3 py-4">{{ $item->orphan->name }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4">
                                    <a href="{{ route('detail-user', $item->competitionRecommendation->tutor->user->id) }}"
                                        class="text-blue-500">
                                        {{ $item->competitionRecommendation->tutor->user->name }}
                                    </a>
                                </td>
                                <td class="whitespace-nowrap px-3 py-4">{{ $item->description }}
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </details>
    @else
        <div class="flex gap-2 items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-gray-700">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                <title>Jumlah Kursus</title>
            </svg>

            <p class="text-lg leading-8 text-gray-700">
            @empty($orphanCrs)
                0
            @else
                {{ count($orphanCrs) }}
            @endempty
            Rekomendai Diberikan
        </p>
    </div>


    <div class="flex justify-between items-center">
        <p class="text-lg leading-8 font-semibold text-gray-700">
            Berikan Rekomendasi Perlombaan Untuk Anak Panti
        </p>
        <a wire:click='addData' class="cursor-pointer" title="Tambah">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-blue-500">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
            </svg>
        </a>
    </div>
    <div class="space-y-4">
        <div class="space-y-1">
            <x-label>
                <x-slot:for>nama_panti_asuhan</x-slot:for>
                <x-slot:slot>Nama Panti Asuhan</x-slot:slot>
            </x-label>

            {{-- Dropdown Sort --}}
            <select id="sort_orphanage" name="sort_orphanage" wire:model="orphanageDropdownSort"
                class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                @foreach ($orphanages as $item)
                    <option value="{{ $item->id }}"
                        {{ $orphanageDropdownSort == $item->id ? 'selected' : null }}>
                        {{ $item->name }}
                    </option>
                @endforeach
            </select>

        </div>

        @if ($orphans)
            <div class="space-y-1">
                <x-label>
                    <x-slot:for>nama_peserta_kursus</x-slot:for>
                    <x-slot:slot>Nama Peserta Lomba</x-slot:slot>
                </x-label>

                {{-- Dropdown Sort --}}
                <select id="sort_orphan" name="sort_orphan" wire:model="orphanDropdownSort"
                    class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                    @foreach ($orphans as $item)
                        <option value="{{ $item->id }}"
                            {{ $orphanDropdownSort == $item->id ? 'selected' : null }}>
                            {{ $item->name }}
                        </option>
                    @endforeach
                </select>
            </div>
        @endif

        <x-input wire:model="orphanDescription">
            <x-slot:type>text</x-slot:type>
            <x-slot:name>orphan_description</x-slot:name>
            <x-slot:id>orphan_description</x-slot:id>
            <x-slot:placeholder></x-slot:placeholder>
        </x-input>

        <div class="overflow-x-auto shadow rounded">
            <table class="min-w-full">
                <thead class="bg-gray-500 text-white">
                    <tr>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                            No.</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                            Nama Anak Panti</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                            Asal Panti</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                            Deskripsi</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                            Terakhir Diubah</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                            Tanggal Ditambahkan</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                            Aksi</th>
                    </tr>
                </thead>
                @if (!$orphanCrs)
                    <tbody class="bg-white">
                        <tr>
                            <td colspan="4" class="px-3 py-4">
                                <div class="grid gap-2 p-2 place-items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                    </svg>
                                    <p>{{ 'Belum ada rekomendasi yang diberikan' }}</p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                @else
                    <tbody>

                        @foreach ($orphanCrs as $index => $item)
                            <tr class="odd:bg-white even:bg-gray-100">
                                <td class="whitespace-nowrap px-3 py-4 w-fit">
                                    {{ $loop->iteration }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 w-full">
                                    {{ App\Models\Orphan::find($item['orphan_id'])->name }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 w-full">
                                    {{ App\Models\Orphanage::find(App\Models\Orphan::find($item['orphan_id'])->orphanage_id)->name }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 w-full">
                                    @if ($editedOrphanCrIndex !== $index)
                                        {{ $item['description'] }}
                                    @else
                                        <x-input wire:model.defer="orphanCrs.{{ $index }}.description">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>description</x-slot:name>
                                            <x-slot:id>description</x-slot:id>
                                            <x-slot:placeholder></x-slot:placeholder>
                                        </x-input>
                                    @endif
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 w-full">
                                    {{ date_format(date_create($item['updated_at']), 'l, d F Y, H:i A') }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 w-full">
                                    {{ date_format(date_create($item['created_at']), 'l, d F Y, H:i A') }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 w-full flex gap-2">
                                    @if (!is_null($editedOrphanCrIndex))
                                        @if ($editedOrphanCrIndex == $index)
                                            {{-- Simpan --}}
                                            <a wire:click.prevent='openModalConfirmation({{ $index }}, "ubah")'
                                                class="cursor-pointer text-blue-500">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                    class="w-6 h-6 text-blue-500">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                        d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z" />
                                                    <title>Simpan</title>
                                                </svg>
                                            </a>
                                        @endif
                                    @endif
                                    @if (is_null($editedOrphanCrIndex))
                                        {{-- Ubah --}}
                                        <a wire:click.prevent='editOrphanCr({{ $index }})'
                                            class="cursor-pointer text-green-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                class="w-6 h-6 text-green-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                                <title>Ubah</title>
                                            </svg>
                                        </a>
                                    @endif
                                    @if (is_null($editedOrphanCrIndex))
                                        {{-- Hapus --}}
                                        <a wire:click.prevent='openModalConfirmation({{ $index }}, "hapus")'
                                            class="cursor-pointer text-red-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                class="w-6 h-6 text-red-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                <title>Hapus</title>
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

        @if ($showFormConfirmation)
            <div class="fixed z-50 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog"
                aria-modal="true">
                <div
                    class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                    <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true">
                    </div>

                    <span class="hidden sm:inline-block sm:align-middle sm:h-screen"
                        aria-hidden="true">&#8203;</span>
                    <div
                        class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-center overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                        <div>
                            <p class="text-2xl leading-8 font-semibold text-gray-900" id="modal-title">Ubah Data
                            </p>
                            <hr class="my-4">
                            <p class="text-gray-500">Konfirmasi bahwa data yang Anda pilih akan diubah</p>
                        </div>
                        <div class="grid gap-4 lg:flex">
                            <a wire:click.prevent='closeModalConfirmation' class="cursor-pointer">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M12 4.5v15m7.5-7.5h-15" />
                                    <title>Close</title>
                                </svg>
                            </a>
                            <a wire:click.prevent=@if ($keterangan == 'ubah') 'saveOrphanCr' @elseif($keterangan == 'hapus') 'deleteOrphanCr' @endif
                                class="cursor-pointer">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M12 4.5v15m7.5-7.5h-15" />
                                    <title>
                                        @if ($keterangan == 'ubah')
                                            Ubah
                                        @elseif($keterangan == 'hapus')
                                            Hapus
                                        @endif
                                    </title>
                                </svg>Ubah
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        @endif

@endif
</div>
