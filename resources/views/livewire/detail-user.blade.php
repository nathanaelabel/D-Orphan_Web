<div class="space-y-8">
    <x-donasi.list-panti.detail-panti.breadcrumb>
        <x-slot:page1>
            @if (auth()->user()->user_type == 'Tutor')
                Panti Asuhan
            @else
                Tutor
            @endif
        </x-slot:page1>
        <x-slot:page2>
            @if (auth()->user()->user_type == 'Tutor')
                Detail Panti Asuhan
            @else
                Detail Tutor
            @endif
        </x-slot:page2>
    </x-donasi.list-panti.detail-panti.breadcrumb>
    <div class="grid lg:flex gap-8">
        <div class="grid gap-4 w-full lg:w-6/12">
            {{-- Title --}}
            <h3 class="text-3xl leading-10 font-bold">
                @if (auth()->user()->user_type == 'Tutor')
                    {{ 'Profil Panti Asuhan' }}
                @else
                    {{ 'Profil Tutor' }}
                @endif
            </h3>
            {{-- User --}}
            <x-donasi.list-panti.detail-panti.card>
                {{-- <x-slot name="course_id">{{$courseTutor->id}}</x-slot> --}}
                <x-slot:image>{{ $user->user->profile_photo_path }}</x-slot:image>
                <x-slot:panti>{{ $user->user->name }}</x-slot:panti>
                <x-slot:lokasi>{{ $user->user->address }}</x-slot:lokasi>
                @if (auth()->user()->user_type == 'Tutor')
                    <x-slot:member_sum>{{ $user->member_count }} Anak Panti</x-slot:member_sum>
                    <x-slot name="orphanage_id">{{ $user->id }}</x-slot>
                    <x-slot:button>Donasi Sekarang</x-slot:button>
                @else
                    <x-slot:member_sum>{{ $user->user->gender }}</x-slot:member_sum>
                @endif
            </x-donasi.list-panti.detail-panti.card>
        </div>

        <div class="w-fit flex-col space-y-4">
            {{-- Description --}}
            <h3 class="text-3xl leading-10 font-bold">
                @if (auth()->user()->user_type == 'Tutor')
                    {{ 'Tentang Panti Asuhan' }}
                @else
                    {{ 'Tentang Tutor' }}
                @endif
            </h3>
            <p class="text-lg leading-8 text-gray-500">
                {{ $user->description }}
            </p>
        </div>
    </div>
</div>
