<button type="button" {!! $attributes->merge(['class' => 'w-full justify-center items-center space-x-2 rounded focus:outline-none px-6 py-3 leading-6 shadow bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500']) !!}>
    <p class="font-semibold text-xl text-white leading-8">{{ $slot }}</p>
</button>
