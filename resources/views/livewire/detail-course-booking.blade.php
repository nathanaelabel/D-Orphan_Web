<div class="space-y-8">
    <x-list-user.detail-user.breadcrumb>
        <x-slot:page1>
            Dasbor
        </x-slot:page1>
        <x-slot:page2>
            Detail Reservasi Kursus
        </x-slot:page2>
    </x-list-user.detail-user.breadcrumb>

    <p class="text-3xl leading-10 font-bold">
        @if (auth()->user()->user_type == 'Tutor')
            Tentang Panti Asuhan
        @else
            Detail Reservasi Kursus
        @endif
    </p>

    <x-list-user.detail-user.card>
        <x-slot:image>
            @if (Auth::user()->user_type == 'Tutor')
                {{ $courseBooking->orphanage->user->profile_photo_path }}
            @else
                {{ $courseBooking->course->tutor->user->profile_photo_path }}
            @endif
        </x-slot:image>
        <x-slot:panti>{{ $courseBooking->orphanage->name }}</x-slot:panti>
        <x-slot:user>{{ $courseBooking->course->tutor->user->name }}</x-slot:user>
        @if (auth()->user()->user_type == 'Tutor')
            <x-slot:member_sum>{{ $courseBooking->orphanage->member_count }} anak Panti
            </x-slot:member_sum>
            <x-slot name="orphanage_id">{{ $courseBooking->orphanage->id }}</x-slot>
            <x-slot:button>Donasi Sekarang</x-slot:button>
        @else
            <x-slot:member_sum>{{ $courseBooking->course->tutor->user->gender }}</x-slot:member_sum>
        @endif

        <h3 class="text-3xl leading-10 font-bold">
            @if (auth()->user()->user_type == 'Tutor')
                Tentang Panti Asuhan
            @else
                Detail Reservasi Kursus
            @endif
        </h3>
        <x-slot:description>
            {{ $courseBooking->course->description }}
        </x-slot:description>
        @if (auth()->user()->user_type == 'Pengurus Panti')
            <p class="text-2xl leading-8 font-semibold">Harga Sewa Peralatan:
                {{ $courseBooking->course->tool_price }}</h4>
            <p class="text-2xl leading-8 font-semibold">Deskripsi Peralatan:
                {{ $courseBooking->course->tool_description }}</h4>
        @endif
    </x-list-user.detail-user.card>
</div>
