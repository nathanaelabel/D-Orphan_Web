@section('title', 'D\'Orphan')

<x-guest-layout>
    {{-- Hero --}}
    <div class="flex flex-col space-y-10 md:space-y-4">
        <div class="grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-2">
            <div class="flex flex-col space-y-0 md:space-y-4 justify-center">
                <div class="space-y-2">
                    <p class="text-4xl font-extrabold">
                        D&#39;Orphan hadir untuk proses pembelajaran yang lebih optimal
                    </p>
                    <p class="text-2xl leading-8 text-gray-500">Gali serta tingkatkan kualitas bakat dan minat
                        anak-anak Panti Asuhan melalui D&#39;Orphan</p>
                    <br>
                </div>
                <div>
                    <a href="/cari">
                        <x-hero-button>Temukan Tutor</x-hero-button>
                    </a>
                </div>
            </div>
            <div class="hidden md:block">
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
            <x-hero-fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 viewBox="0 0 98 97" fill="none" xmlns="http://www.w3.org/2000/svg"
                        class="inline-block">
                        <circle cx="49" cy="48.5" r="47.5" stroke="#3B82F6" stroke-width="2" />
                        <path
                            d="M41.0834 38.6042C41.0834 42.9764 44.6278 46.5208 49.0001 46.5208C53.3723 46.5208 56.9167 42.9764 56.9167 38.6042C56.9167 34.2319 53.3723 30.6875 49.0001 30.6875C44.6278 30.6875 41.0834 34.2319 41.0834 38.6042Z"
                            stroke="#3B82F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M49.0001 52.4583C56.6515 52.4583 62.8542 58.6611 62.8542 66.3125H35.1459C35.1459 58.6611 41.3486 52.4583 49.0001 52.4583Z"
                            stroke="#3B82F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Publikasi Profil Panti dan Tutor</x-slot:title>
            </x-hero-fitur-card>
            <x-hero-fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 viewBox="0 0 98 97" fill="none" xmlns="http://www.w3.org/2000/svg"
                        class="inline-block">
                        <circle cx="49" cy="48.5" r="47.5" stroke="#3B82F6" stroke-width="2" />
                        <path
                            d="M31.1875 66.3125L43.0625 54.4375M39.1042 44.5417C39.1042 52.1931 45.3069 58.3958 52.9583 58.3958C60.6098 58.3958 66.8125 52.1931 66.8125 44.5417C66.8125 36.8902 60.6098 30.6875 52.9583 30.6875C45.3069 30.6875 39.1042 36.8902 39.1042 44.5417Z"
                            stroke="#3B82F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Cari Tutor untuk Sesi Kursus</x-slot:title>
            </x-hero-fitur-card>
            <x-hero-fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 viewBox="0 0 98 97" fill="none" xmlns="http://www.w3.org/2000/svg"
                        class="inline-block">
                        <circle cx="49" cy="48.5" r="47.5" stroke="#3B82F6" stroke-width="2" />
                        <path
                            d="M35.1458 48.5L31.1875 30.6875L66.8125 48.5L31.1875 66.3125L35.1458 48.5ZM35.1458 48.5L50.9792 48.5"
                            stroke="#3B82F6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </x-slot:icon>
                <x-slot:title>Permintaan Sesi Kursus</x-slot:title>
            </x-hero-fitur-card>
            <x-hero-fitur-card>
                <x-slot:icon>
                    <svg width=72 height=72 viewBox="0 0 98 97" fill="none" xmlns="http://www.w3.org/2000/svg"
                        class="inline-block">
                        <circle cx="49" cy="48.5" r="47.5" stroke="#3B82F6" stroke-width="2" />
                        <g clip-path="url(#clip0_1336_22064)">
                            <path
                                d="M49.951 27.6766C49.6517 26.7554 48.3483 26.7554 48.049 27.6766L43.8918 40.4693C43.758 40.8813 43.374 41.1602 42.9408 41.1602L29.4897 41.1607C28.521 41.1608 28.1183 42.4003 28.9019 42.9697L39.7838 50.8765C40.1343 51.1312 40.2729 51.5825 40.1471 51.9945L35.9909 64.7874C35.6916 65.7087 36.746 66.4748 37.5297 65.9055L48.4122 57.9995C48.7627 57.7449 49.2373 57.7449 49.5878 57.9995L60.4703 65.9055C61.254 66.4748 62.3084 65.7087 62.0091 64.7874L57.8529 51.9945C57.7191 51.5825 57.8657 51.1312 58.2162 50.8765L69.0981 42.9697C69.8817 42.4003 69.479 41.1608 68.5103 41.1607L55.0592 41.1602C54.626 41.1602 54.242 40.8813 54.1082 40.4693L49.951 27.6766Z"
                                stroke="#3B82F6" stroke-width="2" />
                        </g>
                        <defs>
                            <clipPath id="clip0_1336_22064">
                                <rect width="47.5" height="47.5" fill="white"
                                    transform="matrix(-1 0 0 1 72.75 24.75)" />
                            </clipPath>
                        </defs>
                    </svg>
                </x-slot:icon>
                <x-slot:title>Rekomendasi Perlombaan</x-slot:title>
            </x-hero-fitur-card>
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
                    <ul class="list-disc text-base text-gray-500 ml-8">
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
                    <ul class="list-disc text-base text-gray-500 ml-8">
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
        <div class="flex flex-col justify-center gap-4">
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
                <p class="text-xl leading-8 text-gray-200">Berbagi pengalaman dan salurkan ilmu untuk mempertajam
                    kemampuan peserta kursus Anda</p>
            </div>
            <div>
                <a href="{{ route('register') }}">
                    <x-primary-button>Berikan Kursus</x-primary-button>
                </a>
            </div>
        </div>
    </div>

    {{-- Donasi --}}
    <div class="bg-home-donasi-background flex flex-col items-center rounded-2xl shadow gap-4 p-8">
        <img src="{{ url('img/home-donasi-illustration.svg') }}" alt="Donasi" />
        <div class="text-center">
            <p class="text-3xl leading-10 font-bold">Donasi praktis</p>
            <p class="text-xl leading-8 text-gray-500">Mewadahi kemudahan proses berdonasi dari para Donatur untuk
                Panti Asuhan</p>
        </div>
        <a href="/donasi">
            <x-primary-button>
                Donasi Sekarang
            </x-primary-button>
        </a>
    </div>
</x-guest-layout>
