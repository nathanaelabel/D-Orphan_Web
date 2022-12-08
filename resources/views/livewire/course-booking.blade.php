<div class="space-y-8">
    <div class="flex justify-between text-3xl leading-10 font-bold">
        <div>
            <h3>{{ 'Halo, ' . Auth::user()->name }}</h3>
        </div>
        <div>
            <h3>{{ 'Rp' . Auth::user()->money }}</h3>
        </div>
    </div>
    <div class="space-y-4">
        <div class="flex justify-center">
            <nav class="text-center bg-blue-100 rounded space-x-4 px-2 py-4" aria-label="Tabs">
                <!-- Current: "bg-gray-100 text-gray-700", Default: "text-gray-500 hover:text-gray-700" -->
                <a wire:click='setTab("pending")' href="#"
                    class="px-3 py-2 font-semibold rounded {{ $activeTab == 'pending' ? 'bg-blue-500 text-white' : 'text-blue-700' }}"
                    aria-current="page">Pesanan</a>

                <a wire:click='setTab("ongoing")' href="#"
                    class="px-3 py-2 font-semibold rounded {{ $activeTab == 'ongoing' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Berlangsung</a>

                <a wire:click='setTab("canceled")' href="#"
                    class="px-3 py-2 font-semibold rounded {{ $activeTab == 'canceled' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Riwayat</a>
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
                <tbody>
                    @foreach ($courseBooking as $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4">
                                {{ $item->orphanage->name }}</td>
                            <td class="whitespace-nowrap px-3 py-4">
                                <span
                                    class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                                    <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor"
                                        viewBox="0 0 8 8">
                                        <circle cx="4" cy="4" r="3" />
                                    </svg>
                                    {{ $item->course->skill->name }}
                                </span>
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
                                <a href="#" class="text-green-500">Terima</a>
                                <a href="#" class="text-red-500">Tolak</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

</div>
