<!-- Page Container -->
<div id="page-container" class="flex flex-col mx-auto w-full">
    <!-- Page Content -->
    <main id="page-content" class="flex flex-auto flex-col max-w-full">
        <div class="flex bg-white rounded-2xl shadow">
            <!-- Sign Up Section -->
            <div class="flex grow w-6/12">
                <div class="flex flex-col p-8 w-full">
                    <!-- Sign Up Content -->
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

                            <!-- Sign Up Form -->
                            <x-jet-validation-errors class="mb-4" />

                            <form method="POST" action="{{ route('donasi') }}">
                                @csrf

                                <div class="mt-4 space-y-4">
                                    <div class="space-y-1">
                                        <label for="nama_panti_asuhan"
                                            class="font-medium text-sm text-gray-700">{{ __('Nama Panti Asuhan') }}</label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <select id="location" name="location"
                                            class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 pl-3 pr-10 py-2 cursor-pointer">
                                            <option>Sinar Bangsa</option>
                                            <option>Bhakti Luhur</option>
                                            <option>Budi Mulia</option>
                                        </select>
                                    </div>
                                    <div class="space-y-1">
                                        <label for="nama_donatur"
                                            class="font-medium text-sm text-gray-700">{{ __('Nama Donatur') }}</label>
                                        <input type="text" name="nama_donatur" id="nama_donatur"
                                            class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                                            placeholder="Surya Candra" />
                                    </div>
                                    <div class="space-y-1">
                                        <label for="nominal_donasi"
                                            class="font-medium text-sm text-gray-700">{{ __('Nominal Donasi') }}</label>
                                        <span class="text-sm text-red-700">&#42;</span>
                                        <div class="relative">
                                            <div
                                                class="absolute inset-y-0 left-0 pl-3 text-gray-700 flex items-center pointer-events-none">
                                                <p>Rp</p>
                                            </div>
                                            <input type="number" name="nominal_donasi" id="nominal_donasi"
                                                class="w-full pl-10 rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                                                placeholder="xxx.xxx" />
                                        </div>
                                    </div>
                                    <div class="space-y-1">
                                        <label for="pesan"
                                            class="font-medium text-sm text-gray-700">{{ __('Pesan') }}</label>
                                        <textarea type="text" name="pesan" id="pesan"
                                            class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50"
                                            placeholder="Semoga membantu ya"></textarea>
                                    </div>
                                    <div class="text-sm text-red-700">
                                        <span>&#42;</span>
                                        <span>Wajib diisi</span>
                                    </div>
                                </div>

                                <div class="mt-6">
                                    <x-primary-button>{{ __('Kirim') }}</x-primary-button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- END Sign Up Content -->
                </div>
            </div>
            <div
                class="bg-authentication-background bg-cover hidden md:grid md:content-evenly text-center rounded-r-2xl w-6/12 gap-4 p-8">
                <p class="text-4xl leading-10 font-extrabold tracking-tight text-white">Asah Bakat dan Minatmu</p>
                <img src="{{ url('img/donasi.svg') }}" alt="Daftar">
            </div>
            <!-- END Sign Up Section -->
        </div>
    </main>
    <!-- END Page Content -->
</div>
<!-- END Page Container -->
