@section('title', 'Detail Reservasi Kursus')

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
        Detail Reservasi Kursus
    </p>

    <x-list-user.detail-user.card>
        <x-slot:image>
            @if (Auth::user()->user_type == 'Tutor')
                {{ $courseBooking->orphanage->photo_url }}
            @else
                {{ $courseBooking->course->tutor->user->profile_photo_path }}
            @endif
        </x-slot:image>
        @if (auth()->user()->user_type == 'Pengurus Panti')
            <x-slot:tutor>{{ $courseBooking }}</x-slot:tutor>
        @else
            <x-slot:panti>nama kursus</x-slot:panti>
        @endif
        <x-slot name="user_id">
            @if (auth()->user()->user_type == 'Pengurus Panti')
                {{ $courseBooking->course->tutor->user->id }}
            @else
                {{ $courseBooking->orphanage->user->id }}
            @endif
        </x-slot>
        <x-slot:user>
            @if (auth()->user()->user_type == 'Pengurus Panti')
                {{ $courseBooking->course->tutor->user->name }}>
            @else
                {{ $courseBooking->orphanage->name }}
            @endif
        </x-slot:user>
        <x-slot:member_sum>{{ count($courseBooking->orphanCourseBookings) }} Peserta
        </x-slot:member_sum>
        @if (auth()->user()->user_type == 'Tutor')
            <x-slot name="orphanage_id">{{ $courseBooking->orphanage->id }}</x-slot>
            <x-slot:button>button donasi ga di tampilin di hlmn ini</x-slot:button>
        @endif

        <x-slot:description>
            {{-- {{ $courseBooking->course->description }} --}}
        </x-slot:description>
    </x-list-user.detail-user.card>

    @if ($courseBooking->status == 'pending')
        @if (auth()->user()->user_type == 'Pengurus Panti')
            <x-primary-button wire:click='decline("pending")'>Batalkan Reservasi Kursus</x-primary-button>
        @else
            <a wire:click='decline("pending")' <button type="button"
                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                <p class="font-semibold text-white">Tolak Reservasi Kursus</p>
                </button>
            </a>
            <a wire:click='accept("pending")' <button type="button"
                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                <p class="font-semibold text-white">Terima Reservasi Kursus</p>
                </button>
            </a>
        @endif
    @elseif($courseBooking->status == 'ongoing')
        @if (auth()->user()->user_type == 'Tutor')
            <x-primary-button wire:click='decline("ongoing")'>Batalkan Reservasi Kursus</x-primary-button>

            <a wire:click='complete("ongoing")' <button type="button"
                class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                <p class="font-semibold text-white">Reservasi Kursus telah selesai</p>
                </button>
            </a>
        @endif
    @endif


    <p class="text-2xl leading-8 font-semibold">gender: {{ $courseBooking->course->tutor->user->gender }}</h4>
    <p class="text-2xl leading-8 font-semibold">Harga Sewa Peralatan:
        {{ $courseBooking->course->tool_price }}</h4>
    <p class="text-2xl leading-8 font-semibold">Deskripsi Peralatan:
        {{ $courseBooking->course->tool_description }}</h4>
        <a href="{{ route('detail-kursus', [$courseBooking->course->id, true]) }}">
            <p class="text-2xl leading-8 font-semibold">Nama kursus: {{ $courseBooking->course->name }}
        </a>
    <p class="text-2xl leading-8 font-semibold">durasi: {{ $courseBooking->hour_count }} jam
    <p class="text-2xl leading-8 font-semibold">
        @if ($courseBooking->is_visit == 1)
            Kursus dilaksanakan di panti
        @else
            Kursus tidak dilaksanakan di panti
        @endif
    <p class="text-2xl leading-8 font-semibold">lokasi: {{ $courseBooking->location }}
    <p class="text-2xl leading-8 font-semibold">
        tanggal dipesan: {{ $courseBooking->created_at }}
        @if ($courseBooking->status != 'pending')
            <p class="text-2xl leading-8 font-semibold">update on: {{ $courseBooking->updated_at }}
        @endif

    <details open class="space-y-2">
        <summary class="text-xl leading-8 font-semibold">Peserta Kursus</summary>

        <div class="overflow-x-auto shadow rounded">
            <table class="min-w-full">
                <thead class="bg-gray-500 text-white">
                    <tr>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                            No.</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Nama Anak</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Jenis Kelamin</th>
                        <th scope="col" class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold">
                            Catatan</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($courseBooking->orphanCourseBookings as $item)
                        <tr class="odd:bg-white even:bg-gray-100">
                            <td class="whitespace-nowrap px-3 py-4 w-fit">{{ $loop->iteration }}</td>
                            <td class="whitespace-nowrap px-3 py-4">{{ $item->orphan->name }}
                            </td>
                            <td class="whitespace-nowrap px-3 py-4">

                                {{ $item->orphan->gender }}

                            </td>
                            <td class="whitespace-nowrap px-3 py-4">{{ $item->orphan->note }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </details>
</div>
