<div
    class="flex flex-col rounded-2xl shadow bg-white overflow-hidden text-center items-center justify-center gap-4 px-4">
    <div class="pt-4">
        <svg width=56 height=56 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
            stroke="#3B82F6" class="inline-block rounded-full border-2 border-blue-500 p-3">
            {{ $icon }}
        </svg>
    </div>
    <div class="text-gray-500">
        <p>{{ $title }}</p>
    </div>
    <div class="pb-4 text-xl leading-8 font-medium">
        <p>{{ $number }}</p>
    </div>
</div>
