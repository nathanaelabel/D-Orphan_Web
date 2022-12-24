<button type="button" {!! $attributes->merge(['class' => 'w-full justify-center items-center space-x-2 rounded focus:outline-none px-6 py-3 leading-6 shadow bg-blue-100 hover:bg-blue-200 focus:ring focus:ring-blue-100 focus:ring-opacity-50 active:bg-blue-100 active:border-blue-100']) !!}>
    <p class="font-semibold text-xl text-blue-700 leading-8">{{ $slot }}</p>
</button>
