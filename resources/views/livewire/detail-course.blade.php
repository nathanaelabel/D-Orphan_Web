@section('title', 'Detail Kursus')

<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.detail-tutor.breadcrumb>
        <x-slot:page1>
            Kursus
        </x-slot:page1>
        <x-slot:page2>
            Tutor
        </x-slot:page2>
        <x-slot:page3>
            Detail Kursus
        </x-slot:page3>
    </x-kursus.tutor.detail-tutor.breadcrumb>

    {{-- Title --}}
    <p class="text-3xl leading-10 font-bold">Detail Tutor</p>

    {{-- Tutor --}}
    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-6/12">
            <img src="{{ $course->tutor->user->profile_photo_path }}" alt="Tutor"
                class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
        </div>

        <div class="w-fit self-center">
            <div class="grid gap-4 p-4 lg:p-8">
                <p class="text-2xl leading-8 font-semibold text-gray-900">
                    {{ $course->tutor->user->name }}
                </p>
                <div class="grid gap-1">
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z" />
                            <title>Jenis Kelamin</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            @if ($course->tutor->user->gender == 'Male')
                                Pria
                            @else
                                Wanita
                            @endif
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M19 7.5v3m0 0v3m0-3h3m-3 0h-3m-2.25-4.125a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zM4 19.235v-.11a6.375 6.375 0 0112.75 0v.109A12.318 12.318 0 0110.374 21c-2.331 0-4.512-.645-6.374-1.766z" />
                            <title>Bergabung sejak</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ date_format(date_create($course->tutor->user->created_at), 'd/m/Y') }}
                        </p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M11.48 3.499a.562.562 0 011.04 0l2.125 5.111a.563.563 0 00.475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 00-.182.557l1.285 5.385a.562.562 0 01-.84.61l-4.725-2.885a.563.563 0 00-.586 0L6.982 20.54a.562.562 0 01-.84-.61l1.285-5.386a.562.562 0 00-.182-.557l-4.204-3.602a.563.563 0 01.321-.988l5.518-.442a.563.563 0 00.475-.345L11.48 3.5z" />
                            <title>Jumlah kelas tersedia</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">
                            {{ count($course->tutor->courses) . ' kelas tersedia' }}</p>
                    </div>
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M4.5 12.75l6 6 9-13.5" />
                            <title>Jumlah kelas berhasil</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ count($courseBookingDone) . ' kelas berhasil' }}
                        </p>
                    </div>
                </div>

                <p class="text-gray-500"> {{ $course->tutor->description }}</p>

                @if ($isFromCourseBooking)
                    @if (auth()->user()->user_type == 'Pengurus Panti')
                        <div class="mt-2">
                            <a href="{{ route('detail-reservation', $course_id) }}">
                                <button type="button"
                                    class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                                    <p class="font-semibold text-white">Reservasi Kursus</p>
                                </button>
                            </a>
                        </div>
                    @endif
                @endif
            </div>
        </div>
    </div>
    
    {{-- Title --}}
    <p class="text-3xl leading-10 font-bold">Detail Kursus {{ $course->skill->name }} oleh {{ $course->tutor->user->name }}</p>

    {{-- Kursus --}}
    <div class="rounded-2xl shadow bg-white lg:flex">
        <div class="grid gap-4 p-4 lg:p-8">
            <p class="text-2xl leading-8 font-semibold text-gray-900 text-center">{{ $course->name }}</p>
            <hr class="my-4">
            <div class="grid gap-1">
                <div class="mb-2">
                    <span
                        class="w-fit inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                        <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor" viewBox="0 0 8 8">
                            <circle cx="4" cy="4" r="3" />
                        </svg>
                        {{ $course->skill->name }}
                    </span>
                </div>
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-700">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                        <title>Batas maksimum peserta kursus</title>
                    </svg>
                    <p class="text-lg leading-8 text-gray-700">{{ $course->maximum_member }} anak/Panti</p>
                </div>

                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-700">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                        <title>Tipe kehadiran</title>
                    </svg>
                    <p class="text-lg leading-8 text-gray-700">
                        @if ($course->is_online == 1)
                            Daring
                        @else
                            Luring
                        @endif
                    </p>
                </div>

                @if ($course->is_visit == 1)
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                        </svg>
                        <title>Luring</title>
                        <p class="text-lg leading-8 text-gray-700">Kursus diadakan di lokasi Panti Asuhan</p>
                    </div>
                @endif

                @if ($course->is_visit == 0)
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                            <title>Media Daring</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $course->location }}</p>
                    </div>
                @endif

                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-700">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        <title>Tarif per jam</title>
                    </svg>
                    <p class="text-lg leading-8 text-gray-700">
                        {{ 'Rp' . number_format($course->hourly_price, 2, ',', '.') }}/jam
                        @if ($course->tool_price == 0)
                        @else
                            &#40;tarif sudah termasuk biaya sewa peralatan senilai
                            {{ 'Rp' . number_format($course->tool_price, 2, ',', '.') }}&#41;
                        @endif
                    </p>
                </div>

                @if ($course->tool_price == 0)
                @else
                    <div class="flex gap-2 items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-700">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M21 7.5l-9-5.25L3 7.5m18 0l-9 5.25m9-5.25v9l-9 5.25M3 7.5l9 5.25M3 7.5v9l9 5.25m0-9v9" />
                            <title>Deskripsi sewa peralatan</title>
                        </svg>
                        <p class="text-lg leading-8 text-gray-700">{{ $course->tool_description }}</p>
                    </div>
                @endif
            </div>

            <p class="text-gray-500"> {{ $course->description }}</p>
        </div>
    </div>

    <div class="space-y-4">
        <div class="flex items-center justify-between">
            {{-- Schedule --}}
            <p class="text-xl leading-8 font-semibold">Jadwal Tutor</p>
            {{-- Dropdown Sort --}}
            <select id="sort_tutor_schedule" name="sort_tutor_schedule" wire:model="tutorScheduleDropdownSort"
                class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                @empty($days)
                    <option "selected">Tidak Ada Jadwal</option>
                @else
                    @foreach ($days as $item)
                        <option {{ $tutorScheduleDropdownSort == $item->day ? 'selected' : null }}>
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
                @empty($dayTimeRanges)
                    <tbody class="bg-white">
                        <tr>
                            <td colspan="3" class="px-3 py-4">
                                <div class="grid gap-2 p-2 place-items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-24 h-24">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M3.75 9.776c.112-.017.227-.026.344-.026h15.812c.117 0 .232.009.344.026m-16.5 0a2.25 2.25 0 00-1.883 2.542l.857 6a2.25 2.25 0 002.227 1.932H19.05a2.25 2.25 0 002.227-1.932l.857-6a2.25 2.25 0 00-1.883-2.542m-16.5 0V6A2.25 2.25 0 016 3.75h3.879a1.5 1.5 0 011.06.44l2.122 2.12a1.5 1.5 0 001.06.44H18A2.25 2.25 0 0120.25 9v.776" />
                                    </svg>
                                    <p>Tidak Ada Jadwal</p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                @else
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
                @endempty
            </table>
        </div>
    </div>
</div>
