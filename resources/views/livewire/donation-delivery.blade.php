<div>
    <div id="page-container" class="flex flex-col mx-auto w-full">
        <!-- Page Content -->
        <main id="page-content" class="flex flex-auto flex-col max-w-full">
            <div class="flex bg-white rounded-2xl shadow">
                <!-- Donation Section -->
                <div class="flex grow w-6/12">
                    <div class="flex flex-col p-8 w-full">
                        <!-- Donation Content -->
                        <div class="grow flex items-center">
                            <div class="w-full max-w-lg mx-auto space-y-10">
                                <!-- Header -->
                                <div class="text-center">
                                    <h3 class="text-3xl leading-9 font-extrabold inline-flex items-center mb-1">
                                        Salurkan donasi
                                    </h3>
                                    <p class="text-gray-500">
                                        Mari berbagi kasih dengan anak-anak Panti Asuhan
                                    </p>
                                </div>
                                <!-- END Header -->

                                <!-- Donation Form -->

                                <div class="mt-4 space-y-4">
                                    <div class="space-y-1">
                                        <x-label>
                                            <x-slot:for>nama_panti_asuhan</x-slot:for>
                                            <x-slot:slot>Nama Panti Asuhan</x-slot:slot>
                                        </x-label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <x-select wire:model="selectedOrphanage" name="orphanage">
                                            <x-slot:id>nama_panti_asuhan</x-slot:id>
                                            <x-slot:name>nama_panti_asuhan</x-slot:name>
                                            <x-slot:option>
                                                @foreach ($orphanages as $orphanage)
                                                    <option value="{{ $orphanage->user->id }}">{{ $orphanage->name }}</option>
                                                @endforeach
                                            </x-slot:option>
                                        </x-select>
                                    </div>
                                    <div class="space-y-1">
                                        <x-label>
                                            <x-slot:for>nama_donatur</x-slot:for>
                                            <x-slot:slot>Nama Donatur</x-slot:slot>
                                        </x-label>
                                        <x-input wire:model="donator_name">
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>nama_donatur</x-slot:name>
                                            <x-slot:id>nama_donatur</x-slot:id>
                                            <x-slot:placeholder>Surya Candra</x-slot:placeholder>
                                        </x-input>
                                    </div>
                                    <div class="space-y-1">
                                        <x-label>
                                            <x-slot:for>nominal_donasi</x-slot:for>
                                            <x-slot:slot>Nominal Donasi</x-slot:slot>
                                        </x-label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <div class="relative">
                                            <div
                                                class="absolute inset-y-0 left-0 pl-3 text-gray-700 flex items-center pointer-events-none">
                                                <p>Rp</p>
                                            </div>
                                            <x-input wire:model="amount" class="pl-10">
                                                <x-slot:type>number</x-slot:type>
                                                <x-slot:name>nominal_donasi</x-slot:name>
                                                <x-slot:id>nominal_donasi</x-slot:id>
                                                <x-slot:placeholder>xxxxxx</x-slot:placeholder>
                                            </x-input>
                                        </div>
                                    </div>
                                    <div class="space-y-1">
                                        <x-label>
                                            <x-slot:for>pesan</x-slot:for>
                                            <x-slot:slot>Pesan</x-slot:slot>
                                        </x-label>
                                        <x-textarea wire:model="message">
                                            <x-slot:maxlength>200</x-slot:maxlength>
                                            <x-slot:placeholder>Semoga membantu ya</x-slot:placeholder>
                                        </x-textarea>
                                    </div>
                                    <div class="text-sm text-red-700">
                                        <span>&#42;</span>
                                        <span>Wajib diisi</span>
                                    </div>
                                </div>

                                <div class="mt-6">
                                    <button wire:click="saveDonation">{{ __('Sumbang') }}</button>
                                </div>
                            </div>
                        </div>
                        <!-- END Donation Content -->
                    </div>
                </div>
                <div
                    class="bg-donasi-background bg-cover hidden md:grid md:content-evenly text-center rounded-r-2xl w-6/12 gap-4 p-8">
                    <p class="text-4xl leading-10 font-extrabold tracking-tight text-gray-700">Asah Bakat dan Minatmu
                    </p>
                    <img src="{{ url('img/donasi.svg') }}" alt="Daftar">
                </div>
                <!-- END Donation Section -->
            </div>
        </main>
        <!-- END Page Content -->
    </div>
    <!-- END Page Container -->
</div>
