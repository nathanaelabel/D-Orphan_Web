@section('title', 'Kelengkapan Kategori')

<div class="space-y-8">
    <div class="bg-white rounded-2xl shadow p-4 lg:p-8 grid gap-4">

        <p class="text-2xl leading-8 font-semibold text-center">Atur Data Akun</p>
        <hr class="my-4">
        <div class="space-y-4">
            <div class="grid gap-2">
                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>name</x-slot:for>
                        <x-slot:slot>Nama Kategori</x-slot:slot>
                    </x-label>
                    <x-input wire:model="name">
                        <x-slot:type>text</x-slot:type>
                        <x-slot:name>name</x-slot:name>
                        <x-slot:id>name</x-slot:id>
                        <x-slot:placeholder>Catur</x-slot:placeholder>
                    </x-input>
                </div>
            </div>
        </div>
        <button wire:click='openModalConfirmation("", "tambah")''
            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
            <p class="font-semibold text-white">Simpan</p>
        </button>
    </div>

    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                        No.</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Nama Kategori</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                        Aksi</th>
                </tr>
            </thead>
            @if (!$categories)
                <tbody class="bg-white">
                    <tr>
                        <td colspan="10" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>Belum ada data Kategori</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($categories as $data)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-fit">
                                {{ $loop->iteration }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full">
                                {{ $data->name }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 w-full flex gap-2">
                                {{-- Hapus --}}
                                <a wire:click.prevent='openModalConfirmation({{ $data->id }}, "hapus")'
                                    class="cursor-pointer text-red-500">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                        <title>Hapus</title>
                                    </svg>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endif
        </table>
    </div>

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
                            @if ($keterangan == 'tambah')
                                Tambah
                            @elseif($keterangan == 'hapus')
                                Hapus
                            @endif data
                        </p>
                        <hr class="my-4">
                        <p class="text-gray-500">Konfirmasi bahwa data @yield('title') yang Anda
                            pilih
                            akan
                            @if ($keterangan == 'tambah')
                                ditambah
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
                        @if ($keterangan == 'tambah')
                            <button wire:click.prevent='addCategory'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                                <p class="font-semibold text-white">Tambah</p>
                            </button>
                        @elseif($keterangan == 'hapus')
                            <button wire:click.prevent='deleteCategory'
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-500 hover:bg-red-600 focus:ring focus:ring-red-500 focus:ring-opacity-50 active:bg-red-500 active:border-red-500">
                                <p class="font-semibold text-white">Hapus</p>
                            </button>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
