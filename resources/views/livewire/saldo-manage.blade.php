@section('title', 'Saldo')

<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Kirimkan permintaan tarik saldo' }}</p>
        </div>
        @if (count($tutorTransactions) == 0)
        @else
            <div>
                <span class="hidden lg:flex gap-2 items-center px-2 py-1 rounded-lg border-2 border-black font-medium">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="currentColor" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M2.25 8.25h19.5M2.25 9h19.5m-16.5 5.25h6m-6 2.25h3m-3.75 3h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5z" />
                        <title>Jumlah riwayat transaksi</title>
                    </svg>
                    {{ count($tutorTransactions) . ' riwayat transaksi' }}
                </span>
            </div>
        @endif
    </div>

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
        @if ($status)
            <select id="sort_tutor_transaction" name="sort_tutor_transaction" wire:model="tutorTransactionDropdownSort"
                class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                @foreach ($status as $itemStatus)
                    <option value="{{ $itemStatus['status'] }}"
                        {{ $tutorTransactionDropdownSort == $itemStatus['status'] ? 'selected' : null }}>
                        @if ($itemStatus['status'] == 'pending')
                            Pesanan
                        @elseif($itemStatus['status'] == 'complete')
                            Sukses
                        @else
                            Gagal
                        @endif
                    </option>
                @endforeach
            </select>
        @endif

        {{-- Dropdown Sort --}}
        <select id="sort_tutor_type_transaction" name="sort_tutor_type_transaction"
            wire:model="tutorTypeTransactionDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            <option value="Penarikan Saldo">
                Penarikan Saldo
            </option>
            <option value="Pembayaran Kursus">
                Pembayaran Kursus
            </option>
        </select>

        {{-- Tambah Permintaan --}}
        <a wire:click.prevent='toggleForm' class="cursor-pointer" title="Tambah">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-blue-500">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
            </svg>
        </a>
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
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Dari Panti</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Waktu Transaksi</th>
                    @if ($tutorTypeTransactionDropdownSort == 'Penarikan Saldo')
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
                                        Pesanan
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
                            <td class="whitespace-nowrap px-3 py-4">
                                @if (is_null($item['to_user_id']))
                                    -
                                @else
                                    {{ $item['from_panti'] }}
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ date_format(date_create($item['updated_at']), 'l, d F Y, H:i A') }}
                            </td>
                            @if ($tutorTypeTransactionDropdownSort == 'Penarikan Saldo')
                                <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                    @if (!is_null($editedTutorTransactionIndex))
                                        @if ($editedTutorTransactionIndex == $index)
                                            {{-- Simpan --}}
                                            <a wire:click.prevent='openModalConfirmation({{ $index }})'
                                                class="cursor-pointer text-blue-500">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
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
                                            class="cursor-pointer text-green-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                                <title>Ubah</title>
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

    @if ($showForm)
        <div class="fixed z-50 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-center overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-gray-900" id="modal-title">Tambah Anak
                            Panti Asuhan</p>
                        <hr class="my-4">
                        {{-- Tambah Anak Panti Form --}}
                    </div>

                    <a wire:click.prevent='addData' class="cursor-pointer">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            <title>
                                Tambahkan</title>
                        </svg>
                    </a>

                    <a wire:click.prevent='toggleForm' class="cursor-pointer">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-500">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            <title>
                                Batal</title>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    @endif
</div>
