@section('title', 'Daftar')

<x-guest-layout>
    <x-slot name="logo">
        {{-- <x-jet-authentication-card-logo /> --}}
    </x-slot>

    <!-- Page Container -->
    <div id="page-container" class="flex flex-col mx-auto w-full">
        <!-- Page Content -->
        <main id="page-content" class="flex flex-auto flex-col max-w-full">
            <div class="flex bg-white rounded-2xl shadow">
                <!-- Sign Up Section -->
                <div class="flex grow w-6/12">
                    <div class="flex flex-col p-8 w-full">
                        <!-- Sign Up Content -->
                        <div class="grow flex items-center">
                            <div class="w-full max-w-lg mx-auto space-y-10">
                                <!-- Header -->
                                <div class="text-center">
                                    <h3 class="text-3xl leading-9 font-extrabold inline-flex items-center mb-1">
                                        Halo
                                    </h3>
                                    <p class="text-gray-500">
                                        Silakan membuat akun
                                    </p>
                                </div>
                                <!-- END Header -->

                                <!-- Sign Up Form -->
                                <x-jet-validation-errors class="mb-4" />

                                <form method="POST" action="{{ route('register') }}">
                                    @csrf
                                    <div>
                                        <x-jet-label for="role" value="{{ __('Daftar sebagai') }}" />
                                        <div class="flex gap-6 mt-1">
                                            <div class="flex gap-2 cursor-pointer items-center">
                                                <input id="panti" class="peer/panti checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" type="radio"
                                                    name="user_type" value="Pengurus Panti"
                                                    @if (count(request()->query()) == 0) checked @endif />
                                                <label for="panti"
                                                    class="peer-checked/panti:text-blue-500 cursor-pointer">Panti
                                                    Asuhan</label>
                                            </div>
                                            <div class="flex gap-2 cursor-pointer items-center">
                                                <input id="tutor" class="peer/tutor checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" type="radio"
                                                    value="Tutor" @if (count(request()->query()) > 0) checked @endif
                                                    name="user_type" />
                                                <label for="tutor"
                                                    class="peer-checked/tutor:text-blue-500 cursor-pointer">Tutor</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="name" value="{{ __('Nama') }}" />
                                        <x-jet-input id="name" class="block mt-1 w-full" type="text"
                                            name="name" :value="old('name')" placeholder="John Doe" required autofocus
                                            autocomplete="name" />
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="email" value="{{ __('Surel') }}" />
                                        <x-jet-input id="email" class="block mt-1 w-full" type="email"
                                            name="email" :value="old('email')" placeholder="johndoe@example.net"
                                            required />
                                    </div>

                                    <div class="mt-4 required">
                                        <x-label>
                                            <x-slot:for>phone_number</x-slot:for>
                                            <x-slot:slot>Nomor Telepon</x-slot:slot>
                                        </x-label>
                                        <x-input class="mt-1">
                                            <x-slot:type>tel</x-slot:type>
                                            <x-slot:name>phone_number</x-slot:name>
                                            <x-slot:id>phone_number</x-slot:id>
                                            <x-slot:placeholder>081234567890</x-slot:placeholder>
                                        </x-input>
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="role" value="{{ __('Jenis Kelamin') }}" />
                                        <div class="flex gap-6 mt-1">
                                            <div class="flex gap-2 cursor-pointer items-center">
                                                <input id="male" class="peer/male checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" type="radio" name="gender"
                                                    checked value="Male" />
                                                <label for="male"
                                                    class="peer-checked/male:text-blue-500 cursor-pointer">Pria</label>
                                            </div>
                                            <div class="flex gap-2 cursor-pointer items-center">
                                                <input id="female" class="peer/female checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer" type="radio" value="Female"
                                                    name="gender" />
                                                <label for="female"
                                                    class="peer-checked/female:text-blue-500 cursor-pointer">Wanita</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mt-4">
                                        <x-label>
                                            <x-slot:for>address</x-slot:for>
                                            <x-slot:slot>Alamat</x-slot:slot>
                                        </x-label>
                                        <x-input class="mt-1" required>
                                            <x-slot:type>text</x-slot:type>
                                            <x-slot:name>address</x-slot:name>
                                            <x-slot:id>address</x-slot:id>
                                            <x-slot:placeholder>Jl. Pahlawan No. 2B</x-slot:placeholder>
                                        </x-input>
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="password" value="{{ __('Kata Sandi') }}" />
                                        <x-jet-input id="password" class="block mt-1 w-full" type="password"
                                            name="password" placeholder="********" required
                                            autocomplete="new-password" />
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="password_confirmation"
                                            value="{{ __('Konfirmasi Kata Sandi') }}" />
                                        <x-jet-input id="password_confirmation" class="block mt-1 w-full"
                                            type="password" name="password_confirmation" placeholder="********" required
                                            autocomplete="new-password" />
                                    </div>

                                    <div class="mt-6 mb-4">
                                        <x-jet-button>{{ __('Daftar') }}</x-jet-button>
                                    </div>

                                    <div class="flex items-center justify-center gap-1">
                                        <p>Sudah punya akun&#63;</p>
                                        <a href="{{ route('login') }}"
                                            class="font-bold text-blue-500">{{ __('Masuk') }}</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- END Sign Up Content -->
                    </div>
                </div>
                <div
                    class="bg-authentication-background bg-cover hidden lg:grid lg:content-evenly text-center rounded-r-2xl w-6/12 gap-4 p-8">
                    <p class="text-4xl leading-10 font-extrabold tracking-tight text-white">Asah Bakat dan Minatmu</p>
                    <img src="{{ url('img/register.svg') }}" alt="Daftar">
                </div>
                <!-- END Sign Up Section -->
            </div>
        </main>
        <!-- END Page Content -->
    </div>
    <!-- END Page Container -->
</x-guest-layout>
