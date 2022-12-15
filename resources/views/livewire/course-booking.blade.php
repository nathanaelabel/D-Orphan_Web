<div class="space-y-8">
    <div class="flex justify-between text-3xl leading-10 font-bold">
        <div>
            <h3>{{ 'Halo, ' . Auth::user()->name }}</h3>
        </div>
        <div>
            <h3>{{ 'Rp' . number_format(Auth::user()->money, 2, ',', '.') }}</h3>
        </div>
    </div>
    <div class="space-y-4">
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
        <div class="overflow-x-auto shadow rounded">
            <table class="min-w-full">
                <thead class="bg-gray-500 text-white">
                    <tr>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Nama Panti Asuhan</th>
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
                            <td colspan="6" class="px-3 py-4 text-center">
                                {{ 'Belum ada data' }}
                            </td>
                        </tr>
                    </tbody>
                @else
                    <tbody>
                        @foreach ($courseBooking as $item)
                            <tr class="odd:bg-white even:bg-gray-100">
                                <td class="whitespace-nowrap px-3 py-4">
                                    {{ $item->orphanage->name }}</td>
                                <td class="whitespace-nowrap px-3 py-4">
                                    <div class="flex items-center gap-2">
                                        <span class=" w-40 text-ellipsis overflow-hidden">
                                            {{ $item->course->name }}</span>
                                        <span
                                            class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                                            <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor"
                                                viewBox="0 0 8 8">
                                                <circle cx="4" cy="4" r="3" />
                                            </svg>
                                            {{ $item->course->skill->name }}
                                        </span>
                                    </div>
                                </td>
                                <td class="whitespace-nowrap px-3 py-4">
                                    {{ 'Rp' . $item->course->hourly_price }}</td>
                                <td class="whitespace-nowrap px-3 py-4">
                                    {{ $item->hour_count . ' Jam' }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4">
                                    {{ $item->start_date }}
                                </td>
                                <td class="whitespace-nowrap px-3 py-4 font-semibold space-x-8">
                                    @if ($activeTab == 'pending')
                                        <a wire:click='accept({{ $item->id }})'
                                            class="cursor-pointer text-green-500">Terima</a>
                                        <a wire:click='decline({{ $item->id }})'
                                            class="cursor-pointer text-red-500">Tolak</a>
                                    @elseif($activeTab == 'ongoing')
                                        @if (Auth::user()->role == 'tutor')
                                            )
                                        @endif
                                        <a wire:click='complete({{ $item->id }})'
                                            class="cursor-pointer text-green-500">Akhiri</a>
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
</div>
