<div class="group relative bg-white rounded-2xl shadow flex flex-col overflow-hidden">
    <div class="aspect-w-3 aspect-h-4 group-hover:opacity-75 sm:aspect-none sm:h-96">
        <img src="{{ $image }}" alt="Kategori kursus"
            class="w-full h-full object-center object-cover sm:w-full sm:h-full">
    </div>
    <div class="flex-1 p-4 space-y-2 flex flex-col">
        <h3 class="truncate text-2xl leading-8 font-semibold text-gray-900 group-hover:text-blue-500">
            {{ $kategori }}
        </h3>
        <div class="flex gap-2 items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6 text-gray-500">
                <path stroke-linecap="round" stroke-linejoin="round"
                    d="M11.48 3.499a.562.562 0 011.04 0l2.125 5.111a.563.563 0 00.475.345l5.518.442c.499.04.701.663.321.988l-4.204 3.602a.563.563 0 00-.182.557l1.285 5.385a.562.562 0 01-.84.61l-4.725-2.885a.563.563 0 00-.586 0L6.982 20.54a.562.562 0 01-.84-.61l1.285-5.386a.562.562 0 00-.182-.557l-4.204-3.602a.563.563 0 01.321-.988l5.518-.442a.563.563 0 00.475-.345L11.48 3.5z" />
            </svg>
            <p class="text-lg leading-8 text-gray-500">{{ $jumlahTutor }}</p>
        </div>
        <div class="mt-2">
            <button
                {{ $attributes->merge(['type' => 'submit', 'class' => 'w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 font-semibold text-white bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500']) }}>
                {{ $button }}
            </button>
        </div>
    </div>
</div>
