<div class="space-y-8">
    <x-list-user.detail-user.breadcrumb>
        <x-slot:page1>
            @if (auth()->user())
                @if (auth()->user()->user_type == 'Tutor')
                    Panti Asuhan
                @else
                    Tutor
                @endif
            @else
                Panti Asuhan
            @endif
        </x-slot:page1>
        <x-slot:page2>
            @if (auth()->user())
                @if (auth()->user()->user_type == 'Tutor')
                    Detail Panti Asuhan
                @else
                    Detail Tutor
                @endif
            @else
                Detail Panti Asuhan
            @endif
        </x-slot:page2>
        <x-slot:page3>

        </x-slot:page3>
    </x-list-user.detail-user.breadcrumb>

    <p class="text-3xl leading-10 font-bold">
        @if (auth()->user())
            @if (auth()->user()->user_type == 'Tutor')
                Detail Panti Asuhan
            @else
                Detail Tutor
            @endif
        @else
            Detail Panti Asuhan
        @endif
    </p>

    <div class="grid rounded-2xl shadow bg-white lg:flex">
        <div class="lg:w-6/12">
            <img src=@if (auth()->user()) @if (Auth::user()->user_type == 'Tutor')
            "{{ $user->photo_url }}"
            @elseif(Auth::user()->user_type == 'Pengurus Panti')
             "{{ $user->user->profile_photo_path }}" @endif
            @else "{{ $user->photo_url }}" @endif
            alt=@if (auth()->user()) @if (Auth::user()->user_type == 'Tutor')
                        "{{ $user->name }}"
                    @elseif(Auth::user()->user_type == 'Pengurus Panti')
                        "{{ $user->user->name }}" @endif
        @else
            "{{ $user->name }}" @endif
            class="w-full h-full object-cover rounded-t-2xl rounded-b-none lg:rounded-l-2xl lg:rounded-r-none">
        </div>

        <div class="w-fit self-center">
            <div class="grid gap-4 p-4 lg:p-8">
                <p class="text-2xl leading-8 font-semibold text-gray-900">
                    @if (auth()->user())
                        @if (Auth::user()->user_type == 'Tutor')
                            {{ $user->name }}
                        @elseif(Auth::user()->user_type == 'Pengurus Panti')
                            {{ $user->user->name }}
                        @endif
                    @else
                        {{ $user->name }}
                    @endif
                </p>
                @if (auth()->user())
                    @if (Auth::user()->user_type == 'Tutor')
                        <p class="text-0xl leading-6 text-gray-500">
                            Nama Pengurus: {{ $user->user->name }}
                        </p>
                    @endif
                @else
                    <p class="text-0xl leading-6 text-gray-500">
                        Nama Pengurus: {{ $user->user->name }}
                    </p>
                @endif
                <p class="text-xl leading-6 text-gray-500">Bergabung sejak
                    {{ date_format(date_create($user->user->created_at), 'l, d F Y') }}
                </p>
                <div>
                    <div class="flex gap-2 items-center">
                        @if (auth()->user())
                            @if (Auth::user()->user_type == 'Tutor')
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                                </svg>
                                <p class="text-lg leading-8 text-gray-500">Jumlah anak Panti: {{ $user->member_count }}
                                    anak
                                </p>
                            @endif
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-500">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                            </svg>
                            <p class="text-lg leading-8 text-gray-500">Jumlah anak Panti: {{ $user->member_count }}
                                anak
                            </p>
                        @endif

                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6 text-gray-500">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z" />
                        </svg>
                        <p class="text-lg leading-8 text-gray-500">
                            @if (auth()->user())
                                @if (Auth::user()->user_type == 'Tutor')
                                    Gender Pengurus:
                                @endif
                            @else
                                Gender Pengurus:
                            @endif
                            {{ $user->user->gender }}
                        </p>

                    </div>
                    @auth
                        @if (Auth::user()->user_type == 'Pengurus Panti')
                            <div class="flex gap-2 items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                                </svg>
                                <p class="text-lg leading-8 text-gray-500">Keahlian: </p>
                                @foreach ($skills as $item)
                                    <div class="w-fit flex-col space-y-4">
                                        <span
                                            class="w-fit inline-flex items-center px-3 py-0.5 rounded-full text-sm font-semibold bg-blue-100 text-blue-800">
                                            <svg class="-ml-1 mr-1.5 h-2 w-2 text-blue-400" fill="currentColor"
                                                viewBox="0 0 8 8">
                                                <circle cx="4" cy="4" r="3" />
                                            </svg>
                                            {{ $item }}
                                        </span>
                                    </div>
                                @endforeach
                            </div>


                            <div class="flex gap-2 items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                                </svg>
                                <p class="text-lg leading-8 text-gray-500">Menyediakan {{ count($user->courses) }} Kursus
                                </p>
                            </div>
                            @if (count($courseBookingDone) > 0)
                                <div class="flex gap-2 items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-500">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                                    </svg>
                                    <p class="text-lg leading-8 text-gray-500">Telah berhasil mengajar di
                                        {{ count($courseBookingDone) }} Kursus</p>
                                </div>
                            @endif
                    </div>
                    @endif
                @endauth
                <div>
                    <p class="text-gray-500">
                        {{ $user->description }}</p>
                </div>

                @if (auth()->user())
                    @if (auth()->user()->user_type == 'Tutor')
                        <div>
                            <a href="{{ route('kirim-donasi', $user->user->id) }}">
                                <x-primary-button>Donasi Sekarang</x-primary-button>
                            </a>
                        </div>
                    @else
                        <div>
                            <a href="mailto:{{ $user->user->email }}">
                                <x-secondary-button>Kirim Surel</x-secondary-button>
                            </a>
                        </div>
                    @endif
                @else
                    <div>
                        <a href="{{ route('kirim-donasi', $user->user->id) }}">
                            <x-primary-button>Donasi Sekarang</x-primary-button>
                        </a>
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
