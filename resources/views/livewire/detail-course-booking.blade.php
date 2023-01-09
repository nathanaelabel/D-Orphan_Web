@section('title', 'Detail Reservasi Kursus')

<div class="space-y-8">
    <x-list-user.detail-user.breadcrumb>
        <x-slot:page1>
            Dasbor
        </x-slot:page1>
        <x-slot:page2>
            Detail Reservasi Kursus
        </x-slot:page2>
    </x-list-user.detail-user.breadcrumb>

    <div class="flex items-center justify-between">
        <div>
            <p class="text-3xl leading-10 font-bold">
                Detail Reservasi Kursus
            </p>
        </div>
        <div class="hidden lg:flex">
            @if ($courseBooking->status == 'pending')
                <span
                    class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-yellow-100 text-yellow-800">
                    {{ 'Menunggu Konfirmasi' }}
                </span>
            @elseif ($courseBooking->status == 'ongoing')
                <span
                    class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-purple-100 text-purple-800">
                    {{ 'Sedang Berlangsung' }}
                </span>
            @elseif ($courseBooking->status == 'complete')
                <span
                    class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-green-100 text-green-800">
                    {{ 'Telah Diselesaikan' }}
                </span>
            @elseif ($courseBooking->status == 'canceled')
                @if (Auth::user()->user_type == 'Pengurus Panti')
                    <span
                        class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-red-100 text-red-800">
                        {{ 'Telah Dibatalkan' }}
                    </span>
                @elseif(Auth::user()->user_type == 'Tutor')
                    <span
                        class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-red-100 text-red-800">
                        {{ 'Telah Ditolak' }}
                    </span>
                @endif
            @endif
        </div>
    </div>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-6/12">
            @if (auth()->user()->user_type == 'Tutor')
                <img src="{{ $courseBooking->orphanage->photo_url }}" alt="Panti Asuhan"
                    class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
            @else
                <img src="{{ $courseBooking->course->tutor->user->profile_photo_path }}" alt="Tutor"
                    class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
            @endif
        </div>

        <div class="w-full self-center">
            <div class="grid gap-4 p-4 lg:p-8">
                <a href="{{ route('detail-kursus', [$courseBooking->course->id, true]) }}"
                    class="text-2xl leading-8 font-semibold text-blue-500 hover:text-blue-600">
                    @if (auth()->user())
                        @if (auth()->user()->user_type == 'Tutor')
                            {{ $courseBooking->course->name }}
                        @else
                            {{ $courseBooking->course->name }}
                        @endif
                    @else
                        {{ $courseBooking->course->name }}
                    @endif
                </a>
                <div class="grid gap-1">
                    @if (auth()->user()->user_type == 'Pengurus Panti')
                        <a href="{{ route('detail-user', $courseBooking->course->tutor->user->id) }}"
                            class="text-lg leading-8 text-blue-500 hover:text-blue-600">
                        @else
                            <a href="{{ route('detail-user', $courseBooking->orphanage->user->id) }}"
                                class="text-lg leading-8 text-blue-500 hover:text-blue-600">
                    @endif
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
                            <title>Nama</title>
                        </svg>
                        <p class="text-lg leading-8">
                            @if (auth()->user()->user_type == 'Pengurus Panti')
                                {{ $courseBooking->course->tutor->user->name }}
                            @else
                                {{ $courseBooking->orphanage->name }}
                            @endif
                        </p>
                    </div>
                    </a>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                            <title>Jumlah Anak Panti Asuhan</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ count($courseBooking->orphanCourseBookings) }}
                            Peserta</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Durasi</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $courseBooking->hour_count }} jam</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Total Harga</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ 'Rp' . number_format($courseBooking->course->hourly_price * $courseBooking->hour_count, 2, ',', '.') }}
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ $courseBooking->location ? $courseBooking->location : $courseBooking->course->location}}
                        </p>
                    </div>

                    @if ($courseBooking->course->tool_price == 0)
                    @else
                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M21 7.5l-9-5.25L3 7.5m18 0l-9 5.25m9-5.25v9l-9 5.25M3 7.5l9 5.25M3 7.5v9l9 5.25m0-9v9" />
                                <title>Deskripsi sewa peralatan</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">{{ $courseBooking->course->tool_description }}
                            </p>
                        </div>
                    @endif
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5" />
                            </svg>
                            <title>Tanggal dipesan</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ date_format(date_create($courseBooking->created_at), 'l, d F Y, H:i A') }}</p>
                    </div>
                </div>
                <hr>
                @if ($courseBooking->status != 'pending')
                    <p class="text-sm text-gray-500">
                        {{ 'Diperbarui pada ' . date_format(date_create($courseBooking->updated_at), 'l, d F Y, H:i A') }}
                    </p>
                @endif
            </div>
        </div>
    </div>

    {{-- Jadwal Kursus --}}
    <div class="space-y-4">
        <div class="flex items-center justify-between">
            {{-- Schedule --}}
            <p class="text-xl leading-8 font-semibold">Jadwal Kursus</p>
            {{-- Dropdown Sort --}}
            <select id="sort_tutor_schedule" name="sort_tutor_schedule"
                wire:model="courseBookingScheduleDropdownSort"
                class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                @empty($days)
                    <option "selected">Tidak Ada Jadwal</option>
                @else
                    @foreach ($days as $item)
                        <option {{ $courseBookingScheduleDropdownSort == $item->day ? 'selected' : null }}>
                            {{ $item->day }}
                        </option>
                    @endforeach
                @endempty
            </select>
        </div>

        <div class="overflow-x-auto shadow rounded">
            <table class="min-w-full">
                <thead class="bg-gray-500 text-white">
                    <tr>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                            No.</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Jam Mulai</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Jam Akhir</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($dayTimeRanges as $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-fit">{{ $loop->iteration }}</td>
                            <td class="whitespace-nowrap px-3 py-4">{{ $item->start_time }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">{{ $item->end_time }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    {{-- Peserta Kursus --}}
    <details open class="space-y-2">
        <summary class="text-xl leading-8 font-semibold">Peserta Kursus</summary>

        <div class="overflow-x-auto shadow rounded">
            <table class="min-w-full">
                <thead class="bg-gray-500 text-white">
                    <tr>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                            No.</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Nama Anak</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Jenis Kelamin</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Catatan</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($courseBooking->orphanCourseBookings as $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-fit">{{ $loop->iteration }}</td>
                            <td class="whitespace-nowrap px-3 py-4">{{ $item->orphan->name }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($item->orphan->gender == 'Male')
                                    {{ 'Pria' }}
                                @else
                                    {{ 'Wanita' }}
                                @endif
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">
                                @if ($item->orphan->note == null)
                                    {{ '-' }}
                                @else
                                    {{ $item->orphan->note }}
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </details>

    @if ($courseBooking->status == 'pending')
        @if (auth()->user()->user_type == 'Pengurus Panti')
            <button wire:click='decline("pending")'
                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                <p class="font-semibold text-red-700">Batalkan Reservasi Kursus</p>
            </button>
        @else
            <div class="grid gap-4 lg:flex">
                <button wire:click='decline("pending")'
                    class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                    <p class="font-semibold text-red-700">Tolak Reservasi Kursus</p>
                </button>
                <button wire:click='accept("pending")'
                    class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500"
                    wire:click='decline("pending")'>
                    <p class="font-semibold text-white">Terima Reservasi Kursus</p>
                </button>
            </div>
        @endif
    @elseif($courseBooking->status == 'ongoing')
        @if (auth()->user()->user_type == 'Tutor')
            <button wire:click='complete("ongoing")'
                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500"
                wire:click='decline("pending")'>
                <p class="font-semibold text-white">Selesaikan Sesi Kursus</p>
            </button>
        @endif
    @endif
</div>
