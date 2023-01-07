@section('title', 'Dasbor')

<div class="space-y-8">
    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">{{ 'Pantau berbagai informasi melalui Dasbor Anda' }}</p>
        </div>
        <div>
            <span class="hidden lg:flex gap-2 items-center pl-1 pr-2 py-1 rounded-lg border-2 border-black font-medium">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                    stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M9 12.75L11.25 15 15 9.75M21 12c0 1.268-.63 2.39-1.593 3.068a3.745 3.745 0 01-1.043 3.296 3.745 3.745 0 01-3.296 1.043A3.745 3.745 0 0112 21c-1.268 0-2.39-.63-3.068-1.593a3.746 3.746 0 01-3.296-1.043 3.745 3.745 0 01-1.043-3.296A3.745 3.745 0 013 12c0-1.268.63-2.39 1.593-3.068a3.745 3.745 0 011.043-3.296 3.746 3.746 0 013.296-1.043A3.746 3.746 0 0112 3c1.268 0 2.39.63 3.068 1.593a3.746 3.746 0 013.296 1.043 3.746 3.746 0 011.043 3.296A3.745 3.745 0 0121 12z" />
                    <title>Akun {{ Auth::user()->user_type }}</title>
                </svg>
                {{ Auth::user()->user_type }}
            </span>
        </div>
    </div>


    <div class="flex justify-center">
        <nav class="text-center bg-blue-100 rounded space-x-4 px-2 py-4" aria-label="Tabs">
            <!-- Current: "bg-gray-100 text-gray-700", Default: "text-gray-500 hover:text-gray-700" -->
            <a wire:click='setTab("pending")'
                class="cursor-pointer px-3 py-2 font-medium rounded {{ $activeTab == 'pending' ? 'bg-blue-500 text-white' : 'text-blue-700' }}"
                aria-current="page">Menunggu Persetujuan</a>

            <a wire:click='setTab("canceled")'
                class="cursor-pointer px-3 py-2 font-medium rounded {{ $activeTab == 'canceled' ? 'bg-blue-500 text-white' : 'text-blue-700' }}">Riwayat</a>
        </nav>
    </div>

    {{-- Table --}}
    <div class="overflow-x-auto shadow rounded">
        <table class="min-w-full">
            <thead class="bg-gray-500 text-white">
                <tr>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Nama Tutor</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Nominal</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Deskripsi</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Tanggal Permintaan</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        Terakhir Diubah</th>
                    <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                        @if ($activeTab == 'pending')
                            Aksi
                        @endif
                    </th>
                </tr>
            </thead>
            @if ($adminTransactions->isEmpty())
                <tbody class="bg-white">
                    <tr>
                        <td colspan="7" class="px-3 py-4">
                            <div class="grid gap-2 p-2 place-items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                </svg>
                                <p>
                                    Belum ada permintaan penarikan saldo
                                </p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            @else
                <tbody>
                    @foreach ($adminTransactions as $item)
                        <tr class="odd:bg-white even:bg-gray-100">

                            <td class="whitespace-nowrap px-3 py-4 text-blue-500 hover:text-blue-600">
                                <a
                                    href="{{ route('detail-user', $item->userRequest->id) }}">{{ $item->userRequest->name }}</a>
                            </td>

                            <td class="whitespace-nowrap px-3 py-4">
                                {{ 'Rp' . number_format($item->amount, 2, ',', '.') }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                <p class="truncate w-40">{{ $item->description }}</p>
                            </td>

                            <td class="whitespace-nowrap px-3 py-4">
                                {{ date_format(date_create($item->created_at), 'd/m/Y') }}
                            </td>

                            <td class="whitespace-nowrap px-3 py-4">
                                {{ date_format(date_create($item->updated_at), 'd/m/Y') }}
                            </td>

                            <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                @if ($activeTab == 'pending')
                                    {{-- Terima --}}
                                    <a wire:click='acceptTransaction({{ $item->id }})'
                                        class="cursor-pointer text-green-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-green-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            <title>Terima</title>
                                        </svg>
                                    </a>
                                    {{-- Tolak --}}
                                    <a wire:click='declineTransaction({{ $item->id }})'
                                        class="cursor-pointer text-red-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-red-500">
                                            <path stroke-linecap="round" stroke-linejoin="round"
                                                d="M9.75 9.75l4.5 4.5m0-4.5l-4.5 4.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            <title>Tolak</title>
                                        </svg>
                                    </a>
                                @else
                                    @if ($item->status == 'complete')
                                        <span
                                            class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-green-100 text-green-800">
                                            Disetujui
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
