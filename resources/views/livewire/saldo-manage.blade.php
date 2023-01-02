@section('title', 'Saldo')

<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Kirimkan permintaan tarik saldo' }}</p>
        </div>
        <div>
            <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                    stroke="currentColor" class="w-5 h-5">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M2.25 8.25h19.5M2.25 9h19.5m-16.5 5.25h6m-6 2.25h3m-3.75 3h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5z" />
                    <title>Nomor rekening tujuan</title>
                </svg>
                <span id="rekening">XXXXXXXXXX</span>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                    stroke="currentColor" class="w-5 h-5 text-blue-500 cursor-pointer" onclick="accountShowHide()">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.242 4.242L9.88 9.88" />
                </svg>
            </span>
        </div>
    </div>

    {{-- Tabs --}}
    <div class="flex justify-center">
        <nav class="text-center bg-blue-100 rounded space-x-4 px-2 py-4" aria-label="Tabs">
            <!-- Current: "bg-gray-100 text-gray-700", Default: "text-gray-500 hover:text-gray-700" -->
            <a wire:click='setTab("Penarikan Saldo")'
                class="cursor-pointer px-3 py-2 font-medium rounded {{ $activeTab == 'Penarikan Saldo' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Penarikan
                Saldo</a>

            <a wire:click='setTab("Pembayaran Kursus")'
                class="cursor-pointer px-3 py-2 font-medium rounded {{ $activeTab == 'Pembayaran Kursus' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Pembayaran
                Kursus</a>
        </nav>
    </div>

    {{-- Content --}}
    <div class="flex justify-between gap-4 items-center">
        {{-- Search Bar --}}
        <div class="w-full relative">
            <x-search-bar>
                <x-slot:placeholder>Cari Riwayat Transaksi</x-slot:placeholder>
            </x-search-bar>
            <input type="search" name="riwayat_transaksi" id="riwayat_transaksi"
                class="shadow w-full pl-10 rounded-md border-transparent focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                placeholder="Cari Riwayat Transaksi" wire:model="tutorTransactionSearch" />
        </div>

        {{-- Dropdown Sort --}}
        @if (count($getStatus) > 0)
            <select id="sort_tutor_transaction" name="sort_tutor_transaction" wire:model="tutorTransactionDropdownSort"
                class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                @foreach ($getStatus as $itemStatus)
                    <option value="{{ $itemStatus['status'] }}"
                        {{ $tutorTransactionDropdownSort == $itemStatus['status'] ? 'selected' : null }}>
                        @if ($itemStatus['status'] == 'pending')
                            Diproses
                        @elseif($itemStatus['status'] == 'complete')
                            Sukses
                        @else
                            Gagal
                        @endif
                    </option>
                @endforeach
            </select>
        @endif

        @if ($activeTab == 'Penarikan Saldo')
            {{-- Tambah Permintaan --}}
            <a wire:click.prevent='toggleForm' class="cursor-pointer">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-blue-500">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                    <title>Tambah</title>
                </svg>
            </a>
        @endif
    </div>

    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Status</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Nominal</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Deskripsi</th>
                    @if ($activeTab == 'Pembayaran Kursus')
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Dari Panti</th>
                    @endif
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Waktu Transaksi</th>
                    @if ($activeTab == 'Penarikan Saldo' && $tutorTransactionDropdownSort != 'canceled')
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Aksi</th>
                    @endif
                </tr>
            </thead>
            @empty($tutorTransactions)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="6" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>{{ 'Belum ada transaksi yang dilakukan' }}</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($tutorTransactions as $index => $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($item['status'] == 'pending')
                                    <span
                                        class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-yellow-100 text-yellow-800">
                                        Diproses
                                    </span>
                                @elseif($item['status'] == 'complete')
                                    <span
                                        class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-green-100 text-green-800">
                                        Sukses
                                    </span>
                                @else
                                    <span
                                        class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-red-100 text-red-800">
                                        Gagal
                                    </span>
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ 'Rp' . number_format($item['amount'], 2, ',', '.') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($editedTutorTransactionIndex !== $index)
                                    {{ $item['description'] }}
                                @else
                                    <x-input wire:model.defer="tutorTransactions.{{ $index }}.description">
                                        <x-slot:type>text</x-slot:type>
                                        <x-slot:name>description</x-slot:name>
                                        <x-slot:id>description</x-slot:id>
                                        <x-slot:placeholder></x-slot:placeholder>
                                    </x-input>
                                @endif
                            </td>
                            @if ($activeTab == 'Pembayaran Kursus')
                                <td class="whitespace-nowrap px-3 py-4">
                                    {{ $item['from_panti'] }}
                                </td>
                            @endif
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ date_format(date_create($item['updated_at']), 'l, d F Y, H:i A') }}
                            </td>
                            @if ($activeTab == 'Penarikan Saldo' && $tutorTransactionDropdownSort != 'canceled')
                                <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                    @if (!is_null($editedTutorTransactionIndex))
                                        @if ($editedTutorTransactionIndex == $index)
                                            {{-- Simpan --}}
                                            <a wire:click.prevent='openModalConfirmation({{ $index }}, "ubah")'
                                                class="cursor-pointer text-blue-500">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                    stroke-width="1.5" stroke="currentColor"
                                                    class="w-6 h-6 text-blue-500">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                        d="M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z" />
                                                    <title>Simpan</title>
                                                </svg>
                                            </a>
                                        @endif
                                    @endif
                                    @if (is_null($editedTutorTransactionIndex))
                                        {{-- Ubah --}}
                                        <a wire:click.prevent='editTutorTransaction({{ $index }})'
                                            class="cursor-pointer text-blue-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                                <title>Ubah</title>
                                            </svg>
                                        </a>
                                    @endif
                                    @if (is_null($editedTutorTransactionIndex))
                                        {{-- Cancel --}}
                                        <a wire:click.prevent='openModalConfirmation({{ $index }}, "canceled")'
                                            class="cursor-pointer text-red-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                <title>Batalkan</title>
                                            </svg>
                                        </a>
                                    @endif
                                </td>
                            @endif
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
                            <button wire:click.prevent='saveTutorTransaction'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500">
                                <p class="font-semibold text-white">Ubah</p>
                            </button>
                        @elseif($keterangan == 'hapus')
                            <button wire:click.prevent='cancelTutorTransaction'
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
        <div class="fixed z-50 inset-0 overflow-y-hidden" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block bg-white rounded-lg px-4 pt-5 pb-4 overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-center" id="modal-title">Tambah permintaan
                            tarik saldo</p>
                        <hr class="my-4">
                        <p class="text-gray-500">Konfirmasi bahwa permintaan tarik saldo akan dikirim</p>
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

<script>
    function accountShowHide() {
        var x = document.getElementById("rekening");
        if (x.innerHTML === "XXXXXXXXXX") {
            x.innerHTML = {{ auth()->user()->tutor->bank_account }};
        } else {
            x.innerHTML = "XXXXXXXXXX";
        }
    }
</script>
