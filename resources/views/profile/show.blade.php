@section('title', 'Profil')

<x-app-layout>
    <div class="max-w-7xl">
        @if (Laravel\Fortify\Features::canUpdateProfileInformation())
            @livewire('profile.update-profile-information-form')

            <x-jet-section-border />
        @endif

        @if (Auth::user()->user_type == 'Pengurus Panti')
            <div class="mt-10 sm:mt-0">
                <div class="md:grid md:grid-cols-3 md:gap-6">
                    <x-jet-section-title>
                        <x-slot name="title">Informasi Panti Asuhan</x-slot>
                        <x-slot name="description">Perbarui informasi profil Panti Asuhan.</x-slot>
                    </x-jet-section-title>

                    <div class="mt-5 md:mt-0 md:col-span-2">
                        <div
                            class="px-4 py-5 bg-white sm:p-6 shadow sm:rounded-tl-md sm:rounded-tr-md' : 'sm:rounded-md">
                            <div class="grid grid-cols-6 gap-6">
                                <div class="col-span-full">
                                    <x-jet-label for="address" value="{{ __('Alamat') }}" />
                                    <x-jet-input id="address" type="text" class="mt-1 block w-full"
                                        wire:model.defer="state.address" placeholder="Jl. Pahlawan No. 2B" />
                                    <x-jet-input-error for="address" class="mt-2" />
                                </div>
                                <div class="col-span-full">
                                    <x-jet-label for="phone_number" value="{{ __('Nomor Telepon') }}" />
                                    <x-jet-input id="phone_number" type="tel" class="mt-1 block w-full"
                                        wire:model.defer="state.phone_number" placeholder="08XXXXXXXXXX" />
                                    <x-jet-input-error for="phone_number" class="mt-2" />
                                </div>
                                <div class="col-span-full">
                                    <x-jet-label for="gender" value="{{ __('Jenis Kelamin') }}" />
                                    <div class="flex gap-6 mt-1">
                                        <div class="flex gap-2 cursor-pointer items-center">
                                            <input id="Male"
                                                class="peer/Male checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                                type="radio" name="gender" value="Male"
                                                @if (count(request()->query()) == 0) checked @endif
                                                wire:model.defer="state.gender" />
                                            <label for="Male"
                                                class="peer-checked/Male:text-blue-500 cursor-pointer">Pria</label>
                                        </div>
                                        <div class="flex gap-2 cursor-pointer items-center">
                                            <input id="Female"
                                                class="peer/Female checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                                type="radio" value="Female"
                                                @if (count(request()->query()) > 0) checked @endif name="gender"
                                                wire:model.defer="state.gender" />
                                            <label for="Female"
                                                class="peer-checked/Female:text-blue-500 cursor-pointer">Wanita</label>
                                        </div>
                                    </div>
                                    <x-jet-input-error for="gender" class="mt-2" />
                                </div>
                            </div>
                        </div>
                        <div
                            class="flex items-center justify-end px-4 py-3 bg-gray-50 text-right sm:px-6 shadow sm:rounded-bl-md sm:rounded-br-md">
                            <x-jet-button wire:loading.attr="disabled" wire:target="photo">
                                {{ __('Simpan') }}
                            </x-jet-button>
                        </div>
                    </div>
                </div>
            </div>
        @else
        @endif
        <x-jet-section-border />

        @if (Laravel\Fortify\Features::enabled(Laravel\Fortify\Features::updatePasswords()))
            <div class="mt-10 sm:mt-0">
                @livewire('profile.update-password-form')
            </div>

            <x-jet-section-border />
        @endif

        @if (Laravel\Fortify\Features::canManageTwoFactorAuthentication())
            <div class="mt-10 sm:mt-0">
                @livewire('profile.two-factor-authentication-form')
            </div>

            <x-jet-section-border />
        @endif

        <div class="mt-10 sm:mt-0">
            @livewire('profile.logout-other-browser-sessions-form')
        </div>

        @if (Laravel\Jetstream\Jetstream::hasAccountDeletionFeatures())
            <x-jet-section-border />

            <div class="mt-10 sm:mt-0">
                @livewire('profile.delete-user-form')
            </div>
        @endif
    </div>
</x-app-layout>
