<div class="group relative bg-white rounded-2xl shadow flex flex-col overflow-hidden">
    <div class="aspect-w-3 aspect-h-4 group-hover:opacity-75 sm:aspect-none sm:h-96">
        @if (auth()->user()->user_type == 'Tutor')
            <img src="{{ $image }}" alt="Panti Asuhan"
                class="w-full h-full object-center object-cover sm:w-full sm:h-full">
        @else
            <img src="{{ $image }}" alt="Tutor"
                class="w-full h-full object-center object-cover sm:w-full sm:h-full">
        @endif
    </div>
    <div class="flex-1 p-4 space-y-2 flex flex-col">
        <h3 class="truncate text-2xl leading-8 font-semibold text-gray-900 group-hover:text-blue-500">
            {{ $user }}
        </h3>
        <div class="flex gap-2 items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-gray-500">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
            </svg>
            <p class="text-lg leading-8 text-gray-500">{{ $member_sum }}</p>
        </div>
        @if (auth()->user()->user_type == 'Tutor')
            <div class="mt-2">
                <a href="{{ route('kirim-donasi', $orphanage_id) }}">
                    <button type="button"
                        class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                        <p class="font-semibold text-white">{{ $button }}</p>
                    </button>
                </a>
            </div>
        @endif
    </div>
</div>
