<nav class="bg-white shadow" x-data="{ open: false }">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex">
                <div class="flex-shrink-0 flex items-center">
                    <a href="{{ route('/') }}" class="flex items-center py-4 mr-4">
                        <img src="{{ url('img/logo.svg') }}" alt="D&#39;Orphan" class="h-8 w-8 mr-3">
                        <span class="text-base leading-6 font-extrabold text-blue-500">D&#39;Orphan</span>
                    </a>
                </div>
                <div class="hidden sm:ml-6 sm:flex sm:space-x-8">
                    @auth
                        <a href="{{ route('dasbor') }}"
                            class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('dasbor') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Dasbor</a>
                        @if (Auth::user()->user_type == 'Pengurus Panti')
                            <a href="{{ route('kelola-panti') }}"
                                class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kelola-panti') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Kelola</a>
                        @endif
                        @if (Auth::user()->user_type == 'Tutor')
                            <a href="{{ route('kelola-kursus') }}"
                                class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kelola-kursus') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Kelola</a>
                        @endif
                        @if (Auth::user()->user_type == 'Tutor')
                            <a href="{{ route('kelola-saldo') }}"
                                class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kelola-saldo') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Saldo</a>
                        @endif
                        <a href="{{ route('kursus') }}"
                            class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kursus') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Kursus</a>
                        <a href="{{ route('lomba') }}"
                            class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('lomba') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Lomba</a>
                        @if (Auth::user()->user_type == 'Tutor')
                            <a href="{{ route('donasi') }}"
                                class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('donasi') ? 'border-blue-500 text-blue-500 font-medium border-b-2' : '' }}">Donasi</a>
                        @endif
                    @endauth
                </div>
            </div>
            @auth
                <div class="hidden sm:ml-6 sm:flex sm:items-center">
                    <!-- Profile dropdown -->
                    <span
                        class="inline-flex items-center px-3 py-0.5 gap-2 rounded-full text-sm font-semibold bg-yellow-600 bg-opacity-90 text-white border-b-2 border-yellow-700 border-opacity-90"
                        title="Saldo {{ Auth::user()->name }}">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M2.25 18.75a60.07 60.07 0 0115.797 2.101c.727.198 1.453-.342 1.453-1.096V18.75M3.75 4.5v.75A.75.75 0 013 6h-.75m0 0v-.375c0-.621.504-1.125 1.125-1.125H20.25M2.25 6v9m18-10.5v.75c0 .414.336.75.75.75h.75m-1.5-1.5h.375c.621 0 1.125.504 1.125 1.125v9.75c0 .621-.504 1.125-1.125 1.125h-.375m1.5-1.5H21a.75.75 0 00-.75.75v.75m0 0H3.75m0 0h-.375a1.125 1.125 0 01-1.125-1.125V15m1.5 1.5v-.75A.75.75 0 003 15h-.75M15 10.5a3 3 0 11-6 0 3 3 0 016 0zm3 0h.008v.008H18V10.5zm-12 0h.008v.008H6V10.5z" />
                        </svg>
                        {{ 'Rp' . number_format(Auth::user()->money, 2, ',', '.') }}
                    </span>
                    <div class="ml-3 relative">
                        <div>
                            <button type="button"
                                class="bg-white rounded-full flex focus:outline-none focus:ring focus:ring-blue-500 focus:ring-opacity-50 focus:scale-100"
                                id="user-menu-button" aria-expanded="false" aria-haspopup="true" @click="open=!open">
                                <span class="sr-only">Open user menu</span>
                                @if (Auth::user()->profile_photo_path != null)
                                    {{-- <img src="/storage/{{ Auth::user()->profile_photo_path }}" alt="{{ Auth::user()->name }}"
                                        class="h-8 w-8 rounded-full" title="{{ Auth::user()->user_type }}"> --}}
                                    <img src="{{ Auth::user()->profile_photo_path }}" alt="{{ Auth::user()->name }}"
                                        class="h-8 w-8 rounded-full" title="{{ Auth::user()->user_type }}">
                                @else
                                    <img src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}"
                                        class="h-8 w-8 rounded-full" title="{{ Auth::user()->user_type }}">
                                @endif
                            </button>
                        </div>
                        <div class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white"
                            role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabindex="-1"
                            x-show="open">
                            <!-- Active: "", Not Active: "" -->
                            <p class="px-4 py-2">
                                <span>Halo,</span>
                                <span>{{ Auth::user()->name }}</span>
                                <span>&#128075;</span>
                            </p>
                            <hr class="my-1">
                            <a href="{{ route('profile.show') }}"
                                class="block px-4 py-2 text-gray-500 hover:text-blue-500 active:text-blue-500 active:scale-100 {{ request()->routeIs('profile.show') ? 'text-blue-500 font-semibold' : '' }}"
                                role="menuitem" tabindex="-1" id="user-menu-item-0">Profil</a>
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf

                                <button type="submit" class="w-full text-start px-4 py-2 text-red-500 active:scale-100"
                                    role="menuitem" tabindex="-1" id="user-menu-item-2">Keluar</button>
                            </form>
                        </div>
                    </div>
                </div>
            @endauth

            @guest
                <div class="hidden md:flex items-center gap-3">
                    <a href="{{ route('login') }}">
                        <x-secondary-button>
                            Masuk
                        </x-secondary-button>
                    </a>
                    <a href="{{ route('register') }}">
                        <x-primary-button>
                            Daftar
                        </x-primary-button>
                    </a>
                </div>
            @endguest
            <div class="-mr-2 flex items-center sm:hidden">
                <!-- Mobile menu button -->
                <button type="button"
                    class="inline-flex items-center justify-center p-2 rounded bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 text-white"
                    aria-controls="mobile-menu" aria-expanded="false" @click="open=!open">
                    <span class="sr-only">Open main menu</span>
                    <!-- Icon when menu is closed. Menu open: "hidden", Menu closed: "block" -->
                    <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                    <!-- Icon when menu is open. Menu open: "block", Menu closed: "hidden" -->
                    <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Mobile menu, show/hide based on menu state. -->
    <div class="sm:hidden" id="mobile-menu" x-show="open">
        <div class="grid gap-4 p-3">
            @auth
                <a href="{{ route('dasbor') }}"
                    class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('dasbor') ? 'text-blue-500 font-semibold' : '' }}">Dasbor</a>
                @if (Auth::user()->user_type == 'Pengurus Panti')
                    <a href="{{ route('kelola-panti') }}"
                        class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kelola-panti') ? 'text-blue-500 font-semibold' : '' }}">Kelola</a>
                @endif
                @if (Auth::user()->user_type == 'Tutor')
                    <a href="{{ route('kelola-kursus') }}"
                        class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kelola-kursus') ? 'text-blue-500 font-semibold' : '' }}">Kelola</a>
                @endif
                @if (Auth::user()->user_type == 'Tutor')
                    <a href="{{ route('kelola-saldo') }}"
                        class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kelola-saldo') ? 'text-blue-500 font-semibold' : '' }}">Saldo</a>
                @endif
                <a href="{{ route('kursus') }}"
                    class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('kursus') ? 'text-blue-500 font-semibold' : '' }}">Kursus</a>
                <a href="{{ route('lomba') }}"
                    class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('lomba') ? 'text-blue-500 font-semibold' : '' }}">Lomba</a>
                @if (Auth::user()->user_type == 'Tutor')
                    <a href="{{ route('donasi') }}"
                        class="text-gray-500 border-transparent hover:text-blue-500 active:text-blue-500 inline-flex items-center px-1 pt-1 border-b-2 font-medium {{ request()->routeIs('donasi') ? 'text-blue-500 font-semibold' : '' }}">Donasi</a>
                @endif
            @endauth
            @guest

                <div class="grid gap-4">
                    <a href="{{ route('login') }}">
                        <x-secondary-button>
                            Masuk
                        </x-secondary-button>
                    </a>
                    <a href="{{ route('register') }}">
                        <x-primary-button>
                            Daftar
                        </x-primary-button>
                    </a>
                </div>
            @endguest
        </div>
        @auth
            <div class="py-3 border-t border-gray-200">
                <div class="flex items-center px-4">
                    <div class="flex-shrink-0">
                        @if (Auth::user()->profile_photo_path != null)
                            {{-- <img src="/storage/{{ Auth::user()->profile_photo_path }}" alt="{{ Auth::user()->name }}"
                                class="h-8 w-8 rounded-full" title="{{ Auth::user()->user_type }}"> --}}
                            <img src="{{ Auth::user()->profile_photo_path }}" alt="{{ Auth::user()->name }}"
                                class="h-8 w-8 rounded-full" title="{{ Auth::user()->user_type }}">
                        @else
                            <img src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }}"
                                class="h-8 w-8 rounded-full" title="{{ Auth::user()->user_type }}">
                        @endif
                    </div>
                    <div class="ml-3">
                        <div class="text-base font-medium text-gray-800">{{ Auth::user()->name }}</div>
                        <div class="text-sm font-medium text-gray-500">{{ Auth::user()->email }}</div>
                    </div>
                </div>
                <div class="mt-3 space-y-1">
                    <span
                        class="inline-flex items-center mx-4 px-3 py-0.5 gap-2 rounded-full text-sm font-semibold bg-yellow-600 bg-opacity-90 text-white border-b-2 border-yellow-700 border-opacity-90"
                        title="Saldo {{ Auth::user()->name }}">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                d="M2.25 18.75a60.07 60.07 0 0115.797 2.101c.727.198 1.453-.342 1.453-1.096V18.75M3.75 4.5v.75A.75.75 0 013 6h-.75m0 0v-.375c0-.621.504-1.125 1.125-1.125H20.25M2.25 6v9m18-10.5v.75c0 .414.336.75.75.75h.75m-1.5-1.5h.375c.621 0 1.125.504 1.125 1.125v9.75c0 .621-.504 1.125-1.125 1.125h-.375m1.5-1.5H21a.75.75 0 00-.75.75v.75m0 0H3.75m0 0h-.375a1.125 1.125 0 01-1.125-1.125V15m1.5 1.5v-.75A.75.75 0 003 15h-.75M15 10.5a3 3 0 11-6 0 3 3 0 016 0zm3 0h.008v.008H18V10.5zm-12 0h.008v.008H6V10.5z" />
                        </svg>
                        {{ 'Rp' . number_format(Auth::user()->money, 2, ',', '.') }}
                    </span>
                    <a href="{{ route('profile.show') }}"
                        class="block px-4 py-2 text-gray-500 hover:text-blue-500 active:text-blue-500  {{ request()->routeIs('profile.show') ? 'text-blue-500 font-semibold' : '' }}"
                        role="menuitem" tabindex="-1" id="user-menu-item-0">Profil</a>
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf

                        <button type="submit" class="w-full text-start px-4 py-2 text-red-500 active:scale-100"
                            role="menuitem" tabindex="-1" id="user-menu-item-2">Keluar</button>
                    </form>
                </div>
            </div>
        @endauth
    </div>
</nav>
