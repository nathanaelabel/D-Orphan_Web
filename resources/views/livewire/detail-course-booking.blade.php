<div class="space-y-8">
    <x-list-user.detail-user.breadcrumb>
        <x-slot:page1>
           Dasbor
        </x-slot:page1>
        <x-slot:page2>
            Detail Reservasi Kursus
        </x-slot:page2>
    </x-list-user.detail-user.breadcrumb>
    <div class="grid lg:flex gap-8">
        <div class="grid gap-4 w-full lg:w-6/12">
            {{-- User --}}
            <x-list-user.detail-user.card>
                <x-slot:image>{{ $courseBooking->course->tutor->user->profile_photo_path }}</x-slot:image>
                <x-slot:user>{{ $courseBooking->course->tutor->user->name }}</x-slot:user>
                @if (auth()->user()->user_type == 'Tutor')
                    <x-slot:member_sum>{{ $courseBooking->orphanage->user->member_count }} Anak Panti
                    </x-slot:member_sum>
                    <x-slot name="orphanage_id">{{ $courseBooking->orphanage->id }}</x-slot>
                    <x-slot:button>Donasi Sekarang</x-slot:button>
                @else
                    <x-slot:member_sum>{{ $courseBooking->course->tutor->user->gender }}</x-slot:member_sum>
                @endif
            </x-list-user.detail-user.card>
        </div>

        <div class="w-fit flex-col space-y-4">
            {{-- Description --}}
            <h3 class="text-3xl leading-10 font-bold">
                @if (auth()->user()->user_type == 'Tutor')
                    Tentang Panti Asuhan
                @else
                    Detail Reservasi Kursus
                @endif
            </h3>
            <p class="text-lg leading-8 text-gray-500">
                {{ $courseBooking->course->description }}
            </p>
            @if (auth()->user()->user_type == 'Pengurus Panti')
                <p class="text-2xl leading-8 font-semibold">Harga Sewa Peralatan:
                    {{ $courseBooking->course->tool_price }}</h4>
                <p class="text-2xl leading-8 font-semibold">Deskripsi Peralatan:
                    {{ $courseBooking->course->tool_description }}</h4>
            @endif
