@section('title', 'D\'Orphan')

<x-guest-layout>
    {{-- Hero --}}
    <div class="flex flex-col space-y-10">
        <div class="grid grid-cols-1 gap-4 lg:grid-cols-2">
            <div class="flex flex-col space-y-0 md:space-y-4 justify-center">
                <div class="space-y-2">
                    <p class="text-4xl font-extrabold">
                        D&#39;Orphan hadir untuk proses pembelajaran yang lebih optimal
                    </p>
                    <p class="text-2xl leading-8 text-gray-500">Gali serta tingkatkan kualitas bakat dan minat
                        anak-anak Panti Asuhan melalui D&#39;Orphan</p>
                    <br>
                </div>
                <div class="grid gap-4 md:grid lg:flex">
                    <a href="{{ route('kursus') }}">
                        <x-home.hero-primary-button>Temukan Tutor</x-home.hero-primary-button>
                    </a>
                    <a href="{{ route('donasi') }}">
                        <x-home.hero-secondary-button>Salurkan Donasi</x-home.hero-secondary-button>
                    </a>
                </div>
            </div>
            <div class="hidden lg:block">
                <img src="{{ url('img/home-hero.svg') }}" alt="Bakat Minat">
            </div>
        </div>

        <div class="self-center animate-bounce">
            <a href="#fitur">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-10 h-10 stroke-blue-500 hover:stroke-blue-600">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M19.5 5.25l-7.5 7.5-7.5-7.5m15 6l-7.5 7.5-7.5-7.5" />
                </svg>
            </a>
        </div>
    </div>

    {{-- Fitur --}}
    <div class="flex flex-col space-y-4" id="fitur">
        <div>
            <p class="text-3xl leading-10 font-bold">Kenali D&#39;Orphan lebih lanjut</p>
            <div class="text-xl leading-8 text-gray-500">
                <span class="font-bold">D'Orphan</span>&nbsp;<span>adalah Pengembangan Aplikasi Web
                    untuk Mengasah Bakat dan Minat Anak
                    Panti Asuhan</span>
            </div>
        </div>
        <div class="grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-4">
            <!-- Card -->
            <x-home.fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke-width="1.5" stroke="#3B82F6"
                        class="inline-block rounded-full border-2 border-blue-500 p-4">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9.813 15.904L9 18.75l-.813-2.846a4.5 4.5 0 00-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 003.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 003.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 00-3.09 3.09zM18.259 8.715L18 9.75l-.259-1.035a3.375 3.375 0 00-2.455-2.456L14.25 6l1.036-.259a3.375 3.375 0 002.455-2.456L18 2.25l.259 1.035a3.375 3.375 0 002.456 2.456L21.75 6l-1.035.259a3.375 3.375 0 00-2.456 2.456zM16.894 20.567L16.5 21.75l-.394-1.183a2.25 2.25 0 00-1.423-1.423L13.5 18.75l1.183-.394a2.25 2.25 0 001.423-1.423l.394-1.183.394 1.183a2.25 2.25 0 001.423 1.423l1.183.394-1.183.394a2.25 2.25 0 00-1.423 1.423z" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Publikasi Profil Panti dan Tutor</x-slot:title>
            </x-home.fitur-card>
            <x-home.fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke-width="1.5" stroke="#3B82F6"
                        class="inline-block rounded-full border-2 border-blue-500 p-4">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Cari Tutor untuk Sesi Kursus</x-slot:title>
            </x-home.fitur-card>
            <x-home.fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke-width="1.5" stroke="#3B82F6"
                        class="inline-block rounded-full border-2 border-blue-500 p-4">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M6 12L3.269 3.126A59.768 59.768 0 0121.485 12 59.77 59.77 0 013.27 20.876L5.999 12zm0 0h7.5" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Kelola Permintaan Sesi Kursus</x-slot:title>
            </x-home.fitur-card>
            <x-home.fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        stroke-width="1.5" stroke="#3B82F6"
                        class="inline-block rounded-full border-2 border-blue-500 p-4">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M16.5 18.75h-9m9 0a3 3 0 013 3h-15a3 3 0 013-3m9 0v-3.375c0-.621-.503-1.125-1.125-1.125h-.871M7.5 18.75v-3.375c0-.621.504-1.125 1.125-1.125h.872m5.007 0H9.497m5.007 0a7.454 7.454 0 01-.982-3.172M9.497 14.25a7.454 7.454 0 00.981-3.172M5.25 4.236c-.982.143-1.954.317-2.916.52A6.003 6.003 0 007.73 9.728M5.25 4.236V4.5c0 2.108.966 3.99 2.48 5.228M5.25 4.236V2.721C7.456 2.41 9.71 2.25 12 2.25c2.291 0 4.545.16 6.75.47v1.516M7.73 9.728a6.726 6.726 0 002.748 1.35m8.272-6.842V4.5c0 2.108-.966 3.99-2.48 5.228m2.48-5.492a46.32 46.32 0 012.916.52 6.003 6.003 0 01-5.395 4.972m0 0a6.726 6.726 0 01-2.749 1.35m0 0a6.772 6.772 0 01-3.044 0" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Rekomendasi Perlombaan</x-slot:title>
            </x-home.fitur-card>
            <!-- END Card -->
        </div>
    </div>

    {{-- SDGs --}}
    <div class="flex flex-col space-y-4">
        <div>
            <p class="text-3xl leading-10 font-bold">Mendukung Sustainable Development Goals &#40;SDGs&#41;</p>
            <p class="text-xl leading-8 text-gray-500">Marilah bersama-sama turut mewujudkan kelancaran SDGs</p>
        </div>
        <div class="space-y-2">
            <div class="grid place-items-center gap-x-12 gap-y-2 md:flex">
                <div class="w-fit">
                    <img src="{{ url('img/home-sdgs4.svg') }}" alt="SDGs 4" />
                </div>
                <div class="w-fit">
                    <p class="text-lg leading-8 font-semibold">Gol ke&#45;4 &#40;Pendidikan Berkualitas&#41;</p>
                    <q class="text-base">Menjamin Kualitas Pendidikan yang Inklusif dan Merata serta Meningkatkan
                        Kesempatan
                        Belajar Sepanjang Hayat untuk Semua</q>
                    <ul class="list-disc text-gray-500 ml-8">
                        <li>Target ke&#45;4.4&#58; Pada tahun 2030, meningkatkan secara signifikan jumlah pemuda dan
                            orang
                            dewasa yang memiliki keterampilan yang relevan, termasuk keterampilan teknik dan kejuruan,
                            untuk
                            pekerjaan, pekerjaan yang layak dan kewirausahaan.</li>
                        <li>Target ke&#45;4.7&#58; Pada tahun 2030, menjamin semua peserta didik memperoleh pengetahuan
                            dan keterampilan yang diperlukan untuk meningkatkan pembangunan berkelanjutan, termasuk
                            antara lain, melalui pendidikan untuk pembangunan berkelanjutan dan gaya hidup yang
                            berkelanjutan, hak asasi manusia, kesetaraan gender, promosi budaya damai dan non kekerasan,
                            kewarganegaraan global dan penghargaan terhadap keanekaragaman budaya dan kontribusi budaya
                            terhadap pembangunan berkelanjutan.</li>
                    </ul>
                </div>
            </div>
            <div class="grid place-items-center gap-x-12 gap-y-2 md:flex">
                <div class="w-fit">
                    <img src="{{ url('img/home-sdgs8.svg') }}" alt="SDGs 8" />
                </div>
                <div class="w-fit">
                    <p class="text-lg leading-8 font-semibold">Gol ke&#45;8 &#40;Pekerjaan Layak dan Pertumbuhan
                        Ekonomi&#41;</p>
                    <q class="text-base">Meningkatkan Pertumbuhan Ekonomi yang Inklusif dan Berkelanjutan, Kesempatan
                        Kerja yang Produktif dan Menyeluruh, serta Pekerjaan yang Layak untuk Semua</q>
                    <ul class="list-disc text-gray-500 ml-8">
                        <li>Target ke&#45;8.3&#58; Menggalakkan kebijakan pembangunan yang mendukung kegiatan produktif,
                            penciptaan lapangan kerja layak, kewirausahaan, kreativitas dan inovasi, dan mendorong
                            formalisasi dan pertumbuhan usaha mikro, kecil, dan menengah, termasuk melalui akses
                            terhadap jasa keuangan.</li>
                        <li>Target ke&#45;8.5&#58; Pada tahun 2030, mencapai pekerjaan tetap dan produktif dan pekerjaan
                            yang layak bagi semua perempuan dan laki-laki, termasuk bagi pemuda dan penyandang
                            difabilitas, dan upah yang sama untuk pekerjaan yang sama nilainya.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    {{-- Kategori --}}
    <div class="flex flex-col space-y-4">
        <div>
            <p class="text-3xl leading-10 font-bold">Beragam kategori kursus tersedia</p>
        </div>
        <div>
            <img src="{{ url('img/home-kategori.jpg') }}" alt="Kategori" />
        </div>
    </div>

    {{-- Tutor --}}
    <div class="bg-home-tutor bg-cover rounded-2xl shadow p-8">
        <div class="flex flex-col gap-4">
            <div>
                <svg width="64" height="64" viewBox="0 0 64 65" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M26.6666 27.4206H13.9628C9.99807 27.4206 7.41942 31.5929 9.19249 35.139L18.5258 53.8057C19.4293 55.6126 21.276 56.7539 23.2961 56.7539H34.01C34.4461 56.7539 34.8805 56.7004 35.3036 56.5947L45.3333 54.0872M26.6666 27.4206V14.0872C26.6666 11.1417 29.0544 8.7539 31.9999 8.7539H32.2545C33.5867 8.7539 34.6666 9.83382 34.6666 11.166C34.6666 13.0708 35.2304 14.933 36.287 16.5179L45.3333 30.0872V54.0872M26.6666 27.4206H31.9999M45.3333 54.0872H50.6666C53.6121 54.0872 55.9999 51.6994 55.9999 48.7539V32.7539C55.9999 29.8084 53.6121 27.4206 50.6666 27.4206H43.9999"
                        stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
            </div>
            <div>
                <p class="text-3xl text-white leading-10 font-bold">Bergabung sebagai Tutor handal</p>
                <p class="text-xl leading-8 text-gray-200">Berbagi pengalaman dan sebarkan ilmu untuk mempertajam
                    kemampuan peserta kursus Anda</p>
            </div>
            <div class="w-fit">
                <a href="{{ route('register', 'Tutor') }}">
                    <x-primary-button>Berikan Kursus</x-primary-button>
                </a>
            </div>
        </div>
    </div>

    {{-- Donasi --}}
    <div class="bg-donasi-background flex flex-col items-center rounded-2xl shadow gap-4 p-8">
        <img src="{{ url('img/home-donasi-illustration.svg') }}" alt="Donasi" />
        <div class="text-center">
            <p class="text-3xl leading-10 font-bold">Donasi praktis</p>
            <p class="text-xl leading-8 text-gray-500">Mewadahi kemudahan proses berdonasi dari para Donatur untuk
                Panti Asuhan</p>
        </div>
        <a href="{{ route('donasi') }}">
            <x-primary-button>Donasi Sekarang</x-primary-button>
        </a>
    </div>
</x-guest-layout>
