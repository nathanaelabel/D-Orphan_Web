<div>
    {{-- <svg wire:click="showModal" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
        stroke="currentColor" class="w-6 h-6 text-blue-500 cursor-pointer">
        <path stroke-linecap="round" stroke-linejoin="round"
            d="M13.5 6H5.25A2.25 2.25 0 003 8.25v10.5A2.25 2.25 0 005.25 21h10.5A2.25 2.25 0 0018 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" />
    </svg> --}}
    <a wire:click='toggleForm' class="cursor-pointer">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
            stroke="currentColor" class="w-6 h-6 text-blue-500">
            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
            <title>Tambah Data</title>
        </svg>
    </a>
    @if ($showForm)
        <div class="fixed z-50 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full sm:p-6">
                    {{-- <div>
                        <div class="text-center sm:mt-5">
                            <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">{{ $title }}</h3>
                            <div class="mt-2">
                                <p class="text-sm text-gray-500">{{ $message }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5 grid gap-4 lg:flex">
                        <x-secondary-button wire:click="actionModal" class="bg-red-100 text-red-700">Batal</x-secondary-button>
                        <x-primary-button wire:click="closeModal">{{ $action }}</x-primary-button>
                    </div> --}}
                    <div class="grid gap-2 bg-white rounded-2xl shadow px-8 py-6">
                        <p class="text-2xl leading-8 font-semibold text-gray-900 text-center">Tambah Data Anak Panti Asuhan</p>
                        <hr class="my-2">
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>name</x-slot:for>
                                <x-slot:slot>Nama</x-slot:slot>
                            </x-label>
                            <x-input wire:model="name">
                                <x-slot:type>text</x-slot:type>
                                <x-slot:name>lokasi</x-slot:name>
                                <x-slot:id>lokasi</x-slot:id>
                                <x-slot:placeholder>Will Smith</x-slot:placeholder>
                            </x-input>
                        </div>
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>date_of_birth</x-slot:for>
                                <x-slot:slot>Tanggal Lahir</x-slot:slot>
                            </x-label>
                            <x-input wire:model="date_of_birth" class="cursor-text">
                                <x-slot:type>date</x-slot:type>
                                <x-slot:name>date_of_birth</x-slot:name>
                                <x-slot:id>date_of_birth</x-slot:id>
                                <x-slot:placeholder>HH/BB/TTTT</x-slot:placeholder>
                            </x-input>
                        </div>
                        <div>
                            <x-label>
                                <x-slot:for>gender</x-slot:for>
                                <x-slot:slot>Jenis Kelamin</x-slot:slot>
                            </x-label>
                            <div class="flex gap-6 mt-1">
                                <div class="flex gap-2 cursor-pointer items-center">
                                    <input wire:model="gender" id="male"
                                        class="peer/male checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                        type="radio" name="gender" value="Male"
                                        @if (count(request()->query()) == 0) checked @endif />
                                    <label for="male" class="peer-checked/male:text-blue-500 cursor-pointer">Pria</label>
                                </div>
                                <div class="flex gap-2 cursor-pointer items-center">
                                    <input wire:model="gender" id="female"
                                        class="peer/female checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                        type="radio" name="gender" value="Female"
                                        @if (count(request()->query()) > 0) checked @endif />
                                    <label for="female"
                                        class="peer-checked/female:text-blue-500 cursor-pointer">Wanita</label>
                                </div>
                            </div>
                        </div>
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>note</x-slot:for>
                                <x-slot:slot>Catatan</x-slot:slot>
                            </x-label>
                            <x-textarea wire:model="note">
                                <x-slot:maxlength>255</x-slot:maxlength>
                                <x-slot:placeholder>Masukkan keterangan</x-slot:placeholder>
                            </x-textarea>
                        </div>
                        <div class="my-2">
                            <button
                                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                                <p class="font-semibold text-white">Tambah Data</p>
                            </button>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    @endif
</div>
