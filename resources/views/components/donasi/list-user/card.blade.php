<a href="{{ route('detail-user', $user_id) }}">
    <div class="group relative bg-white rounded-2xl shadow flex flex-col overflow-hidden">
        <div class="aspect-w-3 aspect-h-4 group-hover:opacity-75 sm:aspect-none sm:h-96">
            <img src="{{ $image }}" alt="Panti Asuhan"
                class="w-full h-full object-center object-cover sm:w-full sm:h-full"
                onerror="this.onerror=null;this.src='/img/placeholder.svg';">
        </div>
        <div class="flex-1 p-4 space-y-2 flex flex-col">
            <p class="truncate w-full text-2xl leading-8 font-semibold text-gray-900 group-hover:text-blue-500">
                {{ $panti }}
            </p>
            <div>
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                    </svg>
                    <p class="text-lg leading-8 text-gray-500">{{ $anak }}
                    </p>
                </div>
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-500">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                    </svg>
                    <p class="truncate w-full text-lg leading-8 text-gray-500">{{ $lokasi }}</p>
                </div </div>
                <div class="mt-2">
                    <button type="button"
                        class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                        <p class="font-semibold text-white">{{ $button }}</p>
                    </button>
                </div>
            </div>
        </div>
    </div>
</a>
