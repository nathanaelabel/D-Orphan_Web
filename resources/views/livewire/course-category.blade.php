<div class="space-y-8">
    <h3 class="text-3xl leading-10 font-bold">{{ 'Jelajahi kategori yang ingin dipelajari' }}</h3>

    {{-- Search Bar --}}
    <div class="flex justify-between gap-4">
        <div class=" w-10/12">
            <label for="email" class="sr-only">Email</label>
            <input type="email" name="email" id="email" class="shadow w-full rounded-md border-0"
                placeholder="Cari Kursus">
        </div>
        {{-- Dropdown Sort --}}
        <div class="relative inline-block w-2/12">
            <div>
                <button type="button"
                    class="inline-flex justify-center w-full rounded-md shadow-sm px-4 py-2 bg-blue-500 font-medium text-white hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-blue-100 focus:ring-blue-500"
                    id="menu-button" aria-expanded="true" aria-haspopup="true">
                    Urutkan
                    <!-- Heroicon name: solid/chevron-down -->
                    <svg class="-mr-1 ml-2 h-5 w-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                        fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd"
                            d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                            clip-rule="evenodd" />
                    </svg>
                </button>
            </div>

            <!--
    Dropdown menu, show/hide based on menu state.
   
    Entering: "transition ease-out duration-100"
    From: "transform opacity-0 scale-95"
    To: "transform opacity-100 scale-100"
    Leaving: "transition ease-in duration-75"
    From: "transform opacity-100 scale-100"
    To: "transform opacity-0 scale-95"
    -->
            <div class="origin-top-right absolute right-0 mt-2 w-56 rounded-md shadow-lg bg-white" role="menu"
                aria-orientation="vertical" aria-labelledby="menu-button" tabindex="-1">
                <div class="py-1" role="none">
                    <!-- Active: "bg-gray-100 text-gray-900", Not Active: "text-gray-700" -->
                    <a href="#" class="text-gray-700 block px-4 py-2 text-sm" role="menuitem" tabindex="-1"
                        id="menu-item-0">Abjad Kategori</a>
                    <a href="#" class="text-gray-700 block px-4 py-2 text-sm" role="menuitem" tabindex="-1"
                        id="menu-item-1">Jumlah Tutor</a>
                </div>
            </div>
        </div>
    </div>

    {{-- Kategori --}}
    <div>
        {{-- @if ($courseCategory->isEmpty())
            <h3>Belum ada kategori kursus yang tersedia</h3>
        @else --}}
        <div class="grid grid-cols-1 gap-y-4 sm:grid-cols-2 sm:gap-x-6 sm:gap-y-10 lg:grid-cols-4 lg:gap-x-8">
            @for ($i = 0; $i < 12; $i++)
                {{-- @foreach ($courseCategory as $item) --}}
                <div class="group relative bg-white rounded-2xl shadow flex flex-col overflow-hidden">
                    <div class="aspect-w-3 aspect-h-4 group-hover:opacity-75 sm:aspect-none sm:h-96">
                        <img src="https://tailwindui.com/img/ecommerce-images/category-page-02-image-card-01.jpg"
                            alt="Kategori kursus"
                            class="w-full h-full object-center object-cover sm:w-full sm:h-full">
                    </div>
                    <div class="flex-1 p-4 space-y-2 flex flex-col">
                        <h3 class="text-2xl leading-8 font-semibold text-gray-900">
                            <a href="#">
                                Catur
                            </a>
                        </h3>
                        <p class="text-lg leading-8 text-gray-500">25 Tutor</p>
                    </div>
                </div>
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
