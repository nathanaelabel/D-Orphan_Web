<div class="space-y-8">
    <div class="flex gap-6">
        <div>
            <img src="https://images.unsplash.com/photo-1584448141569-69f342da535c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=441&q=80"
                alt="Lomba" class="rounded-lg">
        </div>
        <div class="grid gap-6">
            <x-lomba.detail-lomba.breadcrumb>
                <x-slot:page1>Lomba</x-slot:page1>
                <x-slot:page2>Detail Lomba</x-slot:page2>
            </x-lomba.detail-lomba.breadcrumb>

            <h3 class="text-3xl leading-10 font-bold">{{ 'Detail Lomba' }}</h3>

            <h4 class="text-2xl leading-8 font-semibold">Asian Games</h4>

            <div class="flex gap-2 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M18 18.72a9.094 9.094 0 003.741-.479 3 3 0 00-4.682-2.72m.94 3.198l.001.031c0 .225-.012.447-.037.666A11.944 11.944 0 0112 21c-2.17 0-4.207-.576-5.963-1.584A6.062 6.062 0 016 18.719m12 0a5.971 5.971 0 00-.941-3.197m0 0A5.995 5.995 0 0012 12.75a5.995 5.995 0 00-5.058 2.772m0 0a3 3 0 00-4.681 2.72 8.986 8.986 0 003.74.477m.94-3.197a5.971 5.971 0 00-.94 3.197M15 6.75a3 3 0 11-6 0 3 3 0 016 0zm6 3a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0zm-13.5 0a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0z" />
                </svg>
                <p class="text-lg leading-8">Olympic Council of Asia</p>
            </div>

            <span
                class="w-fit inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor" viewBox="0 0 8 8">
                    <circle cx="4" cy="4" r="3" />
                </svg>
                Atletik
            </span>

            <div class="grid">
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                    </svg>
                    <p class="text-lg leading-8 text-gray-500">06/08/2022</p>
                </div>
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    <p class="text-lg leading-8 text-gray-500">07:30 s.d. 14:30</p>
                </div>
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                    </svg>
                    <p class="text-lg leading-8 text-gray-500">Surabaya</p>
                </div>
            </div>

            <p>Pesta Olahraga Asia adalah ajang multi-olahraga yang diselenggarakan setiap empat tahun sekali, dengan
                atlet-atlet dari seluruh Asia dan diselenggarakan oleh Dewan Olimpiade Asia.</p>

            <details open class="space-y-2">
                <summary class="text-xl leading-8 font-semibold">Peserta Lomba</summary>

                <div class="overflow-x-auto shadow rounded">
                    <table class="min-w-full">
                        <thead class="bg-gray-500 text-white">
                            <tr>
                                <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                    No.</th>
                                <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                                    Nama Peserta Kursus</th>
                            </tr>
                        </thead>
                        {{-- @if ($competitionRecommendation->isEmpty())
                            <tbody class="bg-white">
                                <tr>
                                    <td colspan="2" class="px-3 py-4">
                                        <div
                                            class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
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
                        @else --}}
                        <tbody>
                            {{-- @foreach ($competitionRecommendation as $item) --}}
                            @php $number = 1 @endphp
                            <tr class="odd:bg-white even:bg-gray-100">
                                <td class="whitespace-nowrap px-3 py-4 w-fit">{{ $number }}</td>
                                <td class="whitespace-nowrap px-3 py-4 w-full">Ilham Kurniawan</td>
                            </tr>
                            @php $number++ @endphp
                            {{-- @endforeach --}}
                        </tbody>
                        {{-- @endif --}}
                    </table>
                </div>
            </details>

            <a href="#">
                <x-primary-button>Tautan Lomba</x-primary-button>
            </a>

            @if (Auth::user()->user_type == 'Tutor')
                <hr class="border-2">
                <form method="POST" action="{{ route('dasbor') }}" class="space-y-6">
                    @csrf

                    <div class="flex justify-between items-center">
                        <p class="text-lg leading-8 font-semibold text-gray-700">
                            Peserta Kursus
                        </p>
                        <x-primary-button class="w-fit">{{ __('Tambah Peserta') }}</x-primary-button>
                    </div>
                    <div class="space-y-4">
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>nama_panti_asuhan</x-slot:for>
                                <x-slot:slot>Nama Panti Asuhan</x-slot:slot>
                            </x-label>
                            <x-select>
                                <x-slot:id>nama_panti_asuhan</x-slot:id>
                                <x-slot:name>nama_panti_asuhan</x-slot:name>
                                <x-slot:option>
                                    {{-- @foreach (Auth::user()->orphanage->name as $item) --}}
                                    <option>Sinar Bangsa</option>
                                    {{-- @endforeach --}}
                                </x-slot:option>
                            </x-select>
                        </div>
                        <div class="space-y-1">
                            <x-label>
                                <x-slot:for>nama_peserta_kursus</x-slot:for>
                                <x-slot:slot>Nama Peserta Kursus</x-slot:slot>
                            </x-label>
                            <x-select>
                                <x-slot:id>nama_peserta_kursus</x-slot:id>
                                <x-slot:name>nama_peserta_kursus</x-slot:name>
                                <x-slot:option>
                                    {{-- @foreach (Auth::user()->orphanage->orphans as $item) --}}
                                    <option>Ilham Kurniawan</option>
                                    {{-- @endforeach --}}
                                </x-slot:option>
                            </x-select>
                        </div>
                    </div>

                    <div class="overflow-x-auto shadow rounded">
                        <table class="min-w-full">
                            <thead class="bg-gray-500 text-white">
                                <tr>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                        No.</th>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                                        Nama Peserta Kursus</th>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                                        Aksi</th>
                                </tr>
                            </thead>
                            {{-- @if ($competitionRecommendation->isEmpty())
                                <tbody class="bg-white">
                                    <tr>
                                        <td colspan="2" class="px-3 py-4">
                                            <div
                                                class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
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
                            @else --}}
                            <tbody>
                                {{-- @foreach ($competitionRecommendation as $item) --}}
                                @php $number = 1 @endphp
                                <tr class="odd:bg-white even:bg-gray-100">
                                    <td class="whitespace-nowrap px-3 py-4 w-fit">{{ $number }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 w-full">Ilham Kurniawan</td>
                                    <td class="whitespace-nowrap px-3 py-4 w-full">
                                        <a wire:click='' class="cursor-pointer" title="Hapus">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                class="w-6 h-6 text-red-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M9.75 9.75l4.5 4.5m0-4.5l-4.5 4.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                                @php $number++ @endphp
                                {{-- @endforeach --}}
                            </tbody>
                            {{-- @endif --}}
                        </table>
                    </div>
                </form>
            @endif
        </div>
    </div>
</div>
