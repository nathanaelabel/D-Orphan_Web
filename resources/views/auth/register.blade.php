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
                                    <h1 class="text-3xl leading-9 font-extrabold inline-flex items-center mb-1">
                                        Halo
                                    </h1>
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
                                            <div class="space-x-1">
                                                <input id="panti" class="peer/panti" type="radio" name="status"
                                                    checked />
                                                <label for="panti" class="peer-checked/panti:text-blue-500">Panti
                                                    Asuhan</label>
                                            </div>
                                            <div class="space-x-1">
                                                <input id="tutor" class="peer/tutor" type="radio"
                                                    name="status" />
                                                <label for="tutor"
                                                    class="peer-checked/tutor:text-blue-500">Tutor</label>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="name" value="{{ __('Nama') }}" />
                                        <x-jet-input id="name" class="block mt-1 w-full" type="text"
                                            name="name" :value="old('name')" required autofocus autocomplete="name" />
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="email" value="{{ __('Surel') }}" />
                                        <x-jet-input id="email" class="block mt-1 w-full" type="email"
                                            name="email" :value="old('email')" required />
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="password" value="{{ __('Kata Sandi') }}" />
                                        <x-jet-input id="password" class="block mt-1 w-full" type="password"
                                            name="password" required autocomplete="new-password" />
                                    </div>

                                    <div class="mt-4">
                                        <x-jet-label for="password_confirmation"
                                            value="{{ __('Konfirmasi Kata Sandi') }}" />
                                        <x-jet-input id="password_confirmation" class="block mt-1 w-full"
                                            type="password" name="password_confirmation" required
                                            autocomplete="new-password" />
                                    </div>

                                    <div class="mt-6 mb-4">
                                        <x-jet-button
                                            class="bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500 normal-case text-base tracking-normal w-full justify-center">
                                            {{ __('Daftar') }}
                                        </x-jet-button>
                                    </div>

                                    <div class="flex items-center justify-center gap-1">
                                        <p>Sudah punya akun?</p>
                                        <a href="{{ route('login') }}" class="font-bold">{{ __('Masuk') }}</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- END Sign Up Content -->
                    </div>
                </div>
                <div
                    class="bg-authentication-background bg-cover flex flex-col text-center justify-center rounded-r-2xl w-6/12 gap-8 p-8">
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
