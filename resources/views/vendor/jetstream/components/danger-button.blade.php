<button {{ $attributes->merge(['type' => 'button', 'class' => 'w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 font-semibold text-red-700 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100']) }}>
    {{ $slot }}
</button>
