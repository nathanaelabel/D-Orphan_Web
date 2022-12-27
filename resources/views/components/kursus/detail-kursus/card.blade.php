<div class="flex">
    <div class="relative bg-white rounded-2xl shadow flex flex-col overflow-hidden">
        <div class="aspect-w-3 aspect-h-4 group-hover:opacity-75 sm:aspect-none sm:h-96">
            <img src="{{ $image }}" alt="Tutor"
                class="w-full h-full object-center object-cover sm:w-full sm:h-full">
        </div>
        <div class="flex-1 p-4 space-y-4 flex flex-col">
            <p class="truncate w-full text-2xl leading-8 font-semibold text-gray-900 group-hover:text-blue-500">
                {{ $nama }}
                </h3>
            <p class="text-0xl leading-6 text-gray-700">
                Bergabung Sejak {{ $tanggal_bergabung }}
            </p>
            <div class="flex gap-2 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-gray-700">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
                </svg>
                <p class="text-lg leading-8 text-gray-700">{{ $jenis_kelamin }}</p>
            </div>
            <div class="flex gap-2 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-gray-700">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                </svg>
                <p class="text-lg leading-8 text-gray-700">Menyediakan {{ $jumlah_kursus }} Kursus
                </p>
            </div>
            <div class="flex gap-2 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-gray-700">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                </svg>
                <p class="text-lg leading-8 text-gray-700">Telah berhasil mengajar di
                    {{ $jumlah_mengajar }} Kursus</p>
            </div>

            <div class="flex gap-2 items-center">
                <p class="text-lg leading-8 text-gray-500">{{ $description_tutor }}</p>
            </div>
            @if (auth()->user()->user_type=='Pengurus Panti')
                <div class="mt-2">
                    <a href="{{ route('detail-reservation', $course_id) }}">
                        <button type="button"
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                            <p class="font-semibold text-white">{{ $button }}</p>
                        </button>
                    </a>
                </div>
            @endif
        </div>
    </div>
</div>
</div>
