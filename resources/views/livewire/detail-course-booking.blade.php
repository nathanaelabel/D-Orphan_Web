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

    <p class="text-3xl leading-10 font-bold">
        Detail Reservasi Kursus
    </p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-4/12">
            @if (auth()->user()->user_type == 'Tutor')
                <img src="{{ $courseBooking->orphanage->photo_url }}" alt="Panti Asuhan"
                    class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
            @else
                <img src="{{ $courseBooking->course->tutor->user->profile_photo_path }}" alt="Tutor"
                    class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
            @endif
        </div>

        <div class="w-fit self-center">
            <span hidden>{{ $user_id = $courseBooking->orphanage->user_id }}</span>
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
                    <a href="{{ route('detail-user', $user_id) }}"
                        class="text-lg leading-8 text-blue-500 hover:text-blue-600">
                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
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
                                d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z" />
                            <title>Jenis kelamin</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            @if ($courseBooking->course->tutor->user->gender == 'Male')
                                {{ 'Pria' }}
                            @else
                                {{ 'Wanita' }}
                            @endif
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Tarif per jam</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ 'Rp' . number_format($courseBooking->course->hourly_price, 2, ',', '.') . '/jam' }}
                            @if ($courseBooking->course->tool_price == 0)
                            @else
                                &#40;tarif sudah termasuk biaya sewa peralatan senilai
                                {{ 'Rp' . number_format($courseBooking->course->tool_price, 2, ',', '.') }}&#41;
                            @endif
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
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                            <title>Durasi</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $courseBooking->hour_count }} jam</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        @if ($courseBooking->course->is_online == 1)
                            <div class="flex gap-2 items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                                    <title>Tipe kehadiran</title>
                                </svg>
                                <p class="text-lg leading-8 text-gray-700">Daring &#40;via
                                    {{ $courseBooking->course->location }}&#41;
                                </p>
                            </div>
                        @else
                            <div class="flex gap-2 items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3 3l8.735 8.735m0 0a.374.374 0 11.53.53m-.53-.53l.53.53m0 0L21 21M14.652 9.348a3.75
                                    3.75 0 010 5.304m2.121-7.425a6.75 6.75 0 010 9.546m2.121-11.667c3.808 3.807 3.808
                                    9.98 0
                                    13.788m-9.546-4.242a3.733 3.733 0 01-1.06-2.122m-1.061 4.243a6.75 6.75 0
                                    01-1.625-6.929m-.496 9.05c-3.068-3.067-3.664-7.67-1.79-11.334M12 12h.008v.008H12V12z" />
                                    <title>Tipe kehadiran</title>
                                </svg>
                                <p class="text-lg leading-8 text-gray-700">
                                    @if ($courseBooking->course->is_visit == 1)
                                        Luring &#40;Kursus tidak dilaksanakan di lokasi Panti Asuhan&#41;
                                    @else
                                        Luring &#40;Kursus dilaksanakan di lokasi Panti Asuhan&#41;
                                    @endif
                                </p>
                            </div>
                        @endif
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                            </svg>
                            <title>Tanggal dipesan</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $courseBooking->created_at }}</p>
                    </div>
                    @if ($courseBooking->status != 'pending')
                        <div class="flex gap-2 items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5m-9-6h.008v.008H12v-.008zM12 15h.008v.008H12V15zm0 2.25h.008v.008H12v-.008zM9.75 15h.008v.008H9.75V15zm0 2.25h.008v.008H9.75v-.008zM7.5 15h.008v.008H7.5V15zm0 2.25h.008v.008H7.5v-.008zm6.75-4.5h.008v.008h-.008v-.008zm0 2.25h.008v.008h-.008V15zm0 2.25h.008v.008h-.008v-.008zm2.25-4.5h.008v.008H16.5v-.008zm0 2.25h.008v.008H16.5V15z" />
                                </svg>
                                <title>Tanggal diperbarui</title>
                            </svg>
                            <p class="text-lg leading-8 text-gray-700">{{ $courseBooking->updated_at }}</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>

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
            <div class="flex gap-4">
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
            <div class="flex gap-4">
                {{-- <button wire:click='decline("ongoing")'
                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                <p class="font-semibold text-red-700">Batalkan Reservasi Kursus</p>
            </button> --}}
                <button wire:click='complete("ongoing")'
                    class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-green-500 hover:bg-green-600 focus:ring focus:ring-green-500 focus:ring-opacity-50 active:bg-green-500 active:border-green-500"
                    wire:click='decline("pending")'>
                    <p class="font-semibold text-white">Reservasi Kursus telah selesai</p>
                </button>
            </div>
        @endif
    @endif
</div>
