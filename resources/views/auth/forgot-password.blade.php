@section('title', 'Lupa kata sandi')

<x-guest-layout>
    <x-slot name="logo">
        {{-- <x-jet-authentication-card-logo /> --}}
    </x-slot>

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

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
                                        <p class="text-3xl leading-9 font-extrabold inline-flex items-center mb-1">
                                            Setel ulang kata sandi
                                        </p>
                                        <p class="text-gray-500">
                                            Tautan setel ulang kata sandi akan dikirimkan melalui surel akun Anda
                                        </p>
                                    </div>
                                    <!-- END Header -->

                                    <!-- Sign Up Form -->
                                    <x-jet-validation-errors class="mb-4" />

                                    @if (session('status'))
                                        <div class="mb-4 font-medium text-gray-900">
                                            {{ session('status') }}
                                        </div>
                                    @endif

                                    <form method="POST" action="{{ route('login') }}">
                                        @csrf

                                        <div class="space-y-6">
                                            <div>
                                                <x-jet-label for="email" value="{{ __('Surel') }}" />
                                                <x-jet-input id="email" class="block mt-1 w-full" type="email"
                                                    name="email" :value="old('email')" required autofocus />
                                            </div>
                                            <div>
                                                <x-jet-button
                                                    class="bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500 normal-case text-base tracking-normal w-full justify-center">
                                                    {{ __('Kirim') }}
                                                </x-jet-button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- END Sign Up Content -->
                        </div>
                    </div>
                    <div
                        class="bg-authentication-background bg-cover hidden md:grid md:content-evenly text-center rounded-r-2xl w-6/12 gap-4 p-8">
                        <p class="text-4xl leading-10 font-extrabold tracking-tight text-white">Asah Bakat dan Minatmu
                        </p>
                        <img src="{{ url('img/forgot_password.svg') }}" alt="Lupa kata sandi">
                    </div>
                    <!-- END Sign Up Section -->
                </div>
            </main>
            <!-- END Page Content -->
        </div>
        <!-- END Page Container -->
    </form>
</x-guest-layout>
