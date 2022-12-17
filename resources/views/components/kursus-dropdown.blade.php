<div class="relative inline-block w-fit" x-data="{ open: false }">
    <div>
        <button type="button"
            class="inline-flex justify-center w-full rounded-md shadow-sm px-4 py-2 bg-blue-500 font-medium text-white hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50"
            id="menu-button-urutkan-kategori" aria-expanded="false" aria-haspopup="true" @click="open=!open">
            {{ $selectedOption }}
            <!-- Heroicon name: solid/chevron-down -->
            <svg class="-mr-1 ml-2 h-5 w-5 self-center" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
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
    <div class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg bg-white z-10"
        id="menu-button-urutkan-kategori" role="menu" aria-orientation="vertical" aria-labelledby="menu-button"
        tabindex="-1" x-show="open">
        <div class="py-1" role="none">
            <!-- Active: "bg-gray-100 text-gray-900", Not Active: "text-gray-700" -->
            <a href="#" class="text-gray-500 hover:text-blue-500 active:text-blue-500 block px-4 py-2"
                role="menuitem" tabindex="-1" id="menu-item-0">{{ $option1 }}</a>
            <a href="#" class="text-gray-500 hover:text-blue-500 active:text-blue-500 block px-4 py-2"
                role="menuitem" tabindex="-1" id="menu-item-1">{{ $option2 }}</a>
        </div>
    </div>
</div>
