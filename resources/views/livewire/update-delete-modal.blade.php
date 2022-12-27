<div>
    <svg wire:click="showModal" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
        stroke="currentColor" class="w-6 h-6 text-blue-500 cursor-pointer">
        <path stroke-linecap="round" stroke-linejoin="round"
            d="M13.5 6H5.25A2.25 2.25 0 003 8.25v10.5A2.25 2.25 0 005.25 21h10.5A2.25 2.25 0 0018 18.75V10.5m-10.5 6L21 3m0 0h-5.25M21 3v5.25" />
    </svg>

    @if ($modal)
        <div class="fixed z-10 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div class="relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full sm:p-6">
                    <div>
                        <div class="text-center sm:mt-5">
                            <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">{{ $title }}</h3>
                            <div class="mt-2">
                                <p class="text-sm text-gray-500">{{ $message }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5 grid gap-4 lg:flex">
                        <x-secondary-button wire:click="actionModal" class="bg-red-100 text-red-700">Batal</x-secondary-button>
                        <x-primary-button wire:click="closeModal">{{ $action }}</x-primary-button>
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
