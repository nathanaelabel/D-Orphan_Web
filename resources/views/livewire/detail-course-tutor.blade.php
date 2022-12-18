<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-kursus.tutor.detail-tutor.breadcrumb>
        <x-slot:page1>Kursus</x-slot:page1>
        <x-slot:page2>Tutor</x-slot:page2>
        <x-slot:page3>Profil Tutor</x-slot:page3>
    </x-kursus.tutor.detail-tutor.breadcrumb>

    <div class="flex gap-4">
        {{-- Title --}}
        <h3 class="text-3xl leading-10 font-bold">{{ 'Profil Tutor' }}</h3>
        {{-- Description --}}
        <h3 class="text-3xl leading-10 font-bold">{{ 'Tentang Tutor' }}</h3>
    </div>

    {{-- Tutor --}}
    <div>
        <div>
            <x-kursus.tutor.detail-tutor.card>
                <x-slot:image>
                    https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80
                </x-slot:image>
                <x-slot:nama>Will Smith</x-slot:nama>
                <x-slot:kategori1>Catur</x-slot:kategori1>
                <x-slot:kategori2>Atletik</x-slot:kategori2>
                <x-slot:tarif>Rp50.000,00/jam</x-slot:tarif>
                <x-slot:lokasi>Surabaya</x-slot:lokasi>
                <x-slot:sesi>Tersedia Sesi Daring</x-slot:sesi>
                <x-slot:anak>20 anak/Panti</x-slot:anak>
            </x-kursus.tutor.detail-tutor.card>
        </div>
    </div>
</div>
