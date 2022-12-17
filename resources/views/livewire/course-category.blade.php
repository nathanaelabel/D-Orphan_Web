<div class="space-y-8">
    <h3 class="text-3xl leading-10 font-bold">{{ 'Jelajahi kategori yang ingin dipelajari' }}</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4 items-center">
        <x-search-bar>
            <x-slot:placeholder>Cari Kursus</x-slot:placeholder>
        </x-search-bar>
        {{-- Dropdown Sort --}}
        <x-kursus-dropdown>
            <x-slot:selectedOption>Urutkan</x-slot:selectedOption>
            <x-slot:option1>Abjad Kategori</x-slot:option1>
            <x-slot:option2>Jumlah Tutor</x-slot:option2>
        </x-kursus-dropdown>
    </div>

    {{-- Kategori --}}
    <div>
        {{-- @if ($courseCategory->isEmpty())
            <h3>Belum ada kategori kursus yang tersedia</h3>
        @else --}}
        <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
            @for ($i = 0; $i < 12; $i++)
                {{-- @foreach ($courseCategory as $item) --}}
                <a href="#">
                    <div class="group relative bg-white rounded-2xl shadow flex flex-col overflow-hidden">
                        <div class="aspect-w-3 aspect-h-4 group-hover:opacity-75 sm:aspect-none sm:h-96">
                            <img src="https://images.unsplash.com/photo-1529699211952-734e80c4d42b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"
                                alt="Kategori kursus"
                                class="w-full h-full object-center object-cover sm:w-full sm:h-full">
                        </div>
                        <div class="flex-1 p-4 space-y-2 flex flex-col">
                            <h3
                                class="truncate text-2xl leading-8 font-semibold text-gray-900 group-hover:text-blue-500">
                                Catur
                            </h3>
                            <div class="flex gap-2 items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-gray-500">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M11.48 3.499a.562.562 0 011.04 0l2.125 5.111a.563.563 0 00.475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 00-.182.557l1.285 5.385a.562.562 0 01-.84.61l-4.725-2.885a.563.563 0 00-.586 0L6.982 20.54a.562.562 0 01-.84-.61l1.285-5.386a.562.562 0 00-.182-.557l-4.204-3.602a.563.563 0 01.321-.988l5.518-.442a.563.563 0 00.475-.345L11.48 3.5z" />
                                </svg>
                                <p class="text-lg leading-8 text-gray-500">25 Tutor</p>
                            </div>

                        </div>
                    </div>
                </a>
            @endfor
            {{-- @endforeach --}}
        </div>
        {{-- @endif --}}
    </div>

    {{-- Pagination --}}
    <nav class="px-4 flex items-center justify-between sm:px-0">
        <div class="-mt-px w-0 flex-1 flex">
            <a href="#"
                class="border-transparent pt-4 pr-1 inline-flex items-center text-sm font-medium text-blue-500 hover:text-blue-600">
                <!-- Heroicon name: solid/arrow-narrow-left -->
                <svg class="mr-3 h-5 w-5 text-blue-500 hover:text-blue-600" xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd"
                        d="M7.707 14.707a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 1.414L5.414 9H17a1 1 0 110 2H5.414l2.293 2.293a1 1 0 010 1.414z"
                        clip-rule="evenodd" />
                </svg>
                Previous
            </a>
        </div>
        <div class="hidden md:-mt-px md:flex">
            <a href="#"
                class="bg-blue-500 text-white rounded py-2 px-4 inline-flex items-center text-sm font-medium"
                aria-current="page">
                1 </a>
            <a href="#"
                class="border-transparent text-gray-500 hover:text-blue-500 hover:border-gray-300 py-2 px-4 inline-flex items-center text-sm font-medium">
                2 </a>
            <a href="#"
                class="border-transparent text-gray-500 hover:text-blue-500 hover:border-gray-300 py-2 px-4 inline-flex items-center text-sm font-medium">
                3 </a>
            <span class="border-transparent text-gray-500 py-2 px-4 inline-flex items-center text-sm font-medium">
                ... </span>
            <a href="#"
                class="border-transparent text-gray-500 hover:text-blue-500 hover:border-gray-300 py-2 px-4 inline-flex items-center text-sm font-medium">
                8 </a>
            <a href="#"
                class="border-transparent text-gray-500 hover:text-blue-500 hover:border-gray-300 py-2 px-4 inline-flex items-center text-sm font-medium">
                9 </a>
            <a href="#"
                class="border-transparent text-gray-500 hover:text-blue-500 hover:border-gray-300 py-2 px-4 inline-flex items-center text-sm font-medium">
                10 </a>
        </div>
        <div class="-mt-px w-0 flex-1 flex justify-end">
            <a href="#"
                class="border-transparent pt-4 pl-1 inline-flex items-center text-sm font-medium text-blue-500 hover:text-blue-600">
                Next
                <!-- Heroicon name: solid/arrow-narrow-right -->
                <svg class="ml-3 h-5 w-5 text-blue-500 hover:text-blue-600" xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd"
                        d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"
                        clip-rule="evenodd" />
                </svg>
            </a>
        </div>
    </nav>

</div>
