<div class="space-y-8">
    <div class="flex justify-between text-3xl leading-10 font-bold">
        <div>
            <h3>{{ 'Halo, ' . Auth::user()->name }}</h3>
        </div>
        <div>
            <h3>{{ 'Rp' . number_format(Auth::user()->money, 2, ',', '.') }}</h3>
        </div>
    </div>

    {{-- Tabs --}}
    <div class="flex justify-center">
        <nav class="text-center bg-blue-100 rounded space-x-4 px-2 py-4" aria-label="Tabs">
            <!-- Current: "bg-gray-100 text-gray-700", Default: "text-gray-500 hover:text-gray-700" -->
            <a wire:click='setTab("pending")'
                class="cursor-pointer px-3 py-2 font-semibold rounded {{ $activeTab == 'pending' ? 'bg-blue-500 text-white' : 'text-blue-700' }}"
                aria-current="page">Pesanan</a>

            <a wire:click='setTab("ongoing")'
                class="cursor-pointer px-3 py-2 font-semibold rounded {{ $activeTab == 'ongoing' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Berlangsung</a>

            <a wire:click='setTab("canceled")'
                class="cursor-pointer px-3 py-2 font-semibold rounded {{ $activeTab == 'canceled' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Riwayat</a>
        </nav>
    </div>
    {{-- Table --}}
    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    @if (Auth::user()->user_type == 'Tutor')
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Nama Panti Asuhan</th>
                    @else
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Nama Tutor</th>
                    @endif
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Kursus</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tarif per jam</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Durasi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tanggal mulai</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Aksi</th>
                </tr>
            </thead>
            @if ($courseBooking->isEmpty())
                <tbody class="bg-white">
                    <tr>
                        <td colspan="6" class="px-3 py-4">
                            <div
                                class="grid gap-2 border-2 border-gray-300 border-dashed rounded p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>
                                    @if ($activeTab == 'pending')
                                        {{ 'Belum ada pesanan kursus' }}
                                    @elseif ($activeTab == 'ongoing')
                                        {{ 'Belum ada kursus yang sedang berlangsung' }}
                                    @elseif ($activeTab == 'canceled')
                                        {{ 'Belum ada riwayat kursus' }}
                                    @endif
                                </p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($courseBooking as $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            @if (Auth::user()->user_type == 'Tutor')
                                <td class="whitespace-nowrap px-3 py-4 text-blue-500 hover:text-blue-600">
                                    <a
                                        href="{{ route('detail-user', $item->orphanage->user->id) }}">{{ $item->orphanage->name }}</a>
                                </td>
                            @else
                                <td class="whitespace-nowrap px-3 py-4 text-blue-500 hover:text-blue-600">
                                    <a
                                        href="{{ route('detail-user', $item->orphanage->user->id) }}">{{ $item->orphanage->name }}</a>
                                </td>
                            @endif
                            <td class="whitespace-nowrap px-3 py-4">
                                <div class="flex items-center gap-2">
                                    <span
                                        class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                                        <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor"
                                            viewBox="0 0 8 8">
                                            <circle cx="4" cy="4" r="3" />
                                        </svg>
                                        {{ $item->course->skill->name }}
                                    </span>
                                    <span class="w-40 text-ellipsis overflow-hidden">
                                        {{ $item->course->name }}</span>
                                </div>
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ 'Rp' . number_format($item->course->hourly_price, 2, ',', '.') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ $item->hour_count . ' Jam' }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ $item->start_date }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                @if ($activeTab == 'pending')
                                    @if (Auth::user()->user_type == 'Tutor')
                                        {{-- Terima --}}
                                        <a wire:click='accept({{ $item->id }})'
                                            class="cursor-pointer text-green-500" title="Terima">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            </svg>
                                        </a>
                                        {{-- Tolak --}}
                                        <a wire:click='decline({{ $item->id }})'
                                            class="cursor-pointer text-red-500" title="Tolak">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M9.75 9.75l4.5 4.5m0-4.5l-4.5 4.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            </svg>
                                        </a>
                                    @else
                                        {{-- Batal --}}
                                        <a wire:click='decline({{ $item->id }})'
                                            class="cursor-pointer text-red-500" title="Batal">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M6 18L18 6M6 6l12 12" />
                                            </svg>
                                        </a>
                                    @endif
                                @elseif($activeTab == 'ongoing')
                                    @if (Auth::user()->user_type == 'Tutor')
                                        {{-- Akhiri --}}
                                        <a wire:click='complete({{ $item->id }})'
                                            class="cursor-pointer text-green-500" title="Akhiri">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                class="w-6 h-6 text-green-500">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M4.5 12.75l6 6 9-13.5" />
                                            </svg>
                                        </a>
                                    @else
                                        {{ '-' }}
                                    @endif
                                @else
                                    @if ($item->status == 'complete')
                                        <span
                                            class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-green-100 text-green-800">
                                            Diakhiri
                                        </span>
                                    @else
                                        <span
                                            class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-red-100 text-red-800">
                                            Ditolak
                                        </span>
                                    @endif
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            @endif
        </table>
    </div>
</div>
