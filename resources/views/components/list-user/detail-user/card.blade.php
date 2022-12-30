<div class="grid rounded-2xl shadow bg-white lg:flex">
    <div class="lg:w-6/12">
        @if (auth()->user()->user_type == 'Tutor')
            <img src="{{ $image }}" alt="Panti Asuhan"
                class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
        @else
            <img src="{{ $image }}" alt="Tutor"
                class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
        @endif
    </div>

    <div class="w-fit self-center">
        <div class="grid gap-4 p-4 lg:p-8">
            <p class="text-2xl leading-8 font-semibold text-gray-900">
                @if (auth()->user())
                    @if (auth()->user()->user_type == 'Tutor')
                        {{ $panti }}
                    @else
                        {{ $tutor }}
                    @endif
                @else
                    {{ $panti }}
                @endif
            </p>
            <div class="grid gap-1">
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-700">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9 12.75L11.25 15 15 9.75M21 12c0 1.268-.63 2.39-1.593 3.068a3.745 3.745 0 01-1.043 3.296 3.745 3.745 0 01-3.296 1.043A3.745 3.745 0 0112 21c-1.268 0-2.39-.63-3.068-1.593a3.746 3.746 0 01-3.296-1.043 3.745 3.745 0 01-1.043-3.296A3.745 3.745 0 013 12c0-1.268.63-2.39 1.593-3.068a3.745 3.745 0 011.043-3.296 3.746 3.746 0 013.296-1.043A3.746 3.746 0 0112 3c1.268 0 2.39.63 3.068 1.593a3.746 3.746 0 013.296 1.043 3.746 3.746 0 011.043 3.296A3.745 3.745 0 0121 12z" />
                        <title>Nama</title>
                    </svg>
                    <a href="{{ route('detail-user', $user_id) }}">
                        <p class="text-xl leading-6 text-gray-700">{{ $user }}</p>
                    </a>
                </div>
                <div class="flex gap-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-gray-700">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                        <title>Jumlah Anak Panti Asuhan</title>
                    </svg>
                    <p class="text-lg leading-8 text-gray-700">{{ $member_sum }}</p>
                </div>
            </div>

            <p class="text-gray-500">{{ $description }}</p>

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
</div>
