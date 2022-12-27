<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-list-user.detail-user.breadcrumb>
        <x-slot:page1>
            Kursus
        </x-slot:page1>
        <x-slot:page2>
            Tutor
        </x-slot:page2>
        <x-slot:page3>
            Detail Kursus
        </x-slot:page3>
    </x-list-user.detail-user.breadcrumb>

    <div class="grid lg:flex gap-8">
        <div class="grid gap-4 w-full lg:w-6/12">
            {{-- Title --}}
            <p class="text-3xl leading-10 font-bold">Tutor</h3>
                {{-- Course --}}
                <x-kursus.detail-kursus.card>
                    <x-slot name="course_id">{{ $course->id }}</x-slot>
                    <x-slot:tanggal_bergabung>
                        {{ date_format(date_create($course->tutor->user->created_at), 'l, d F Y') }}
                    </x-slot:tanggal_bergabung>
                    <x-slot:image>{{ $course->tutor->user->profile_photo_path }}</x-slot:image>
                    <x-slot:nama>{{ $course->tutor->user->name }}</x-slot:nama>
                    <x-slot:jenis_kelamin>{{ $course->tutor->user->gender }}</x-slot:jenis_kelamin>
                    <x-slot:jumlah_kursus>{{ count($course->tutor->courses) }}</x-slot:jumlah_kursus>
                    <x-slot:jumlah_mengajar>
                        {{ count($courseBookingDone) }}
                    </x-slot:jumlah_mengajar>
                    <x-slot:description_tutor>{{ $course->tutor->description }}</x-slot:description_tutor>
                    @if (auth()->user()->user_type == 'Pengurus Panti')
                        <x-slot:button>Reservasi Kursus</x-slot:button>
                    @endif
                </x-kursus.detail-kursus.card>
        </div>

        <div class="w-fit flex-col space-y-4">
            {{-- Description --}}
            <p class="text-3xl leading-10 font-bold">Detail Kursus</h3>
        </div>

        <div class="flex gap-2">
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
                stroke="currentColor" class="w-6 h-6 text-gray-500">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
            </svg>
            <p class="text-lg leading-8 text-gray-500">Maksimum {{ $course->maximum_member }} anak/Panti</p>
        </div>

        <div class="flex gap-2 items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-gray-500">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
            </svg>
            <p class="text-lg leading-8 text-gray-500">
                @if ($course->is_online == 1)
                    Sesi Daring
                @else
                    Sesi Luring
                @endif
            </p>
        </div>

        @if ($course->is_visit == 1)
            <div class="flex gap-2 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-gray-500">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M9.348 14.651a3.75 3.75 0 010-5.303m5.304 0a3.75 3.75 0 010 5.303m-7.425 2.122a6.75 6.75 0 010-9.546m9.546 0a6.75 6.75 0 010 9.546M5.106 18.894c-3.808-3.808-3.808-9.98 0-13.789m13.788 0c3.808 3.808 3.808 9.981 0 13.79M12 12h.008v.007H12V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                </svg>
                <p class="text-lg leading-8 text-gray-500">
                    Kursus diadakan di lokasi Panti Asuhan

                </p>
            </div>
        @endif

        @if ($course->is_visit == 0)
            <div class="flex gap-2 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-gray-500">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                </svg>
                <p class="text-lg leading-8 text-gray-500">
                    {{ $course->location }}</p>
            </div>
        @endif
        <div class="flex gap-2 items-center">

            <p class="text-lg leading-8 text-gray-500">Deskripsi Kursus: {{ $course->description }}</p>
        </div>

        <p class="text-2xl leading-8 font-semibold">Harga</h4>

        <div class="flex gap-2 items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-gray-500">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            <p class="text-lg leading-8 text-gray-500">
                {{ 'Rp' . number_format($course->hourly_price, 2, ',', '.') }}/jam *harga sudah termasuk biaya sewa
                peralatan</p>
        </div>

        <div class="flex gap-2 items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-gray-500">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            <p class="text-lg leading-8 text-gray-500">Total Harga sewa peralatan:
                {{ 'Rp' . number_format($course->tool_price, 2, ',', '.') }}</p>
        </div>

        <div class="flex gap-2 items-center">
            <p class="text-lg leading-8 text-gray-500">Deskripsi sewa peralatan: {{ $course->tool_description }}</p>
        </div>

        {{-- Schedule --}}
        <details open class="space-y-2">
            <summary class="text-xl leading-8 font-semibold">Jadwal Tutor</summary>

            <div class="overflow-x-auto shadow rounded">
                <table class="min-w-full">
                    <thead class="bg-gray-500 text-white">
                        <tr>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                No.</th>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                                Jam Mulai</th>
                            <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-full">
                                Jam Akhir</th>
                        </tr>
                    </thead>
                    @if (!$dayTimeRanges)
                        <tbody class="bg-white">
                            <tr>
                                <td colspan="3" class="px-3 py-4">
                                    <div
                                        class="grid gap-2 p-2 place-items-center">
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
                                    <td class="whitespace-nowrap px-3 py-4 w-full">{{ $item->start_time }}
                                    </td>
                                    <td class="whitespace-nowrap px-3 py-4 w-full">{{ $item->end_time }}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    @endif
                </table>
            </div>
        </details>

        {{-- Dropdown Sort --}}
        <select id="sort_tutor_schedule" name="sort_tutor_schedule" wire:model="tutorScheduleDropdownSort"
            class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
            @if (!$days)
                <option "selected">Tidak Ada Jadwal</option>
            @else
                @foreach ($days as $item)
                    <option {{ $tutorScheduleDropdownSort == $item->day ? 'selected' : null }}>{{ $item->day }}
                    </option>
                @endforeach
            @endif
        </select>
    </div>
