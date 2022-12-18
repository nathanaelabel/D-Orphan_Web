<button type="button"
    {!! $attributes->merge(['class' => 'w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 
    leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500']) !!}>  
    
    <p class="font-semibold text-white">{{ $slot }}</p>
</button>
