<div class="space-y-8">
    {{-- Breadcrumb --}}
    <x-donasi.list-panti.detail-panti.breadcrumb>
        <x-slot:page1>Panti Asuhan</x-slot:page1>
        <x-slot:page2>Detail Panti Asuhan</x-slot:page2>
    </x-donasi.list-panti.detail-panti.breadcrumb>

    <div class="grid lg:flex gap-8">
        <div class="grid gap-4 w-full lg:w-6/12">
            {{-- Title --}}
            <h3 class="text-3xl leading-10 font-bold">{{ 'Profil Panti Asuhan' }}</h3>
            {{-- Panti Asuhan --}}
            <x-donasi.list-panti.detail-panti.card>
                {{-- <x-slot name="course_id">{{$courseTutor->id}}</x-slot> --}}
                <x-slot:image>
                    https://images.unsplash.com/photo-1621403215688-d4d8088ccbc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80
                </x-slot:image>
                <x-slot:panti>Sinar Bangsa</x-slot:panti>
                <x-slot:lokasi>Jl. Pahlawan No. 2B</x-slot:lokasi>
                <x-slot:surel>sinarbangsa@gmail.com</x-slot:surel>
                <x-slot:button>Donasi Panti</x-slot:button>
            </x-donasi.list-panti.detail-panti.card>
        </div>

        <div class="w-fit flex-col space-y-4">
            {{-- Description --}}
            <h3 class="text-3xl leading-10 font-bold">{{ 'Tentang Panti Asuhan' }}</h3>
            <p class="text-lg leading-8 text-gray-500">Panti Sinar Bangsa telah didirikan sejak tahun 1985. Pemilik dari panti ini bernama Susanto Budiman. Beliau mendirikan panti ini karena memiliki amanah sebelumnya untuk membantu setiap anak yang kehilangan orang tua dan membutuhkan bantuan serta bimbingan.</p>
        </div>
    </div>
</div>
