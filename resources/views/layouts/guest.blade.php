<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    {{-- HyperText Markup Language Meta Tags --}}
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords"
        content="D'Orphan, Web Application, Bakat dan Minat, Panti Asuhan, Informatika Universitas Ciputra Surabaya" />
    <meta name="description"
        content="D'Orphan - Web adalah Pengembangan Aplikasi Web untuk Mengasah Bakat dan Minat Anak Panti Asuhan." />
    <meta name="owner"
        content="Nur Azizah, Oey Darryl Valencio Wijaya, Nathanael Abel Arianto, David Christian, Probo Krishnacahya, Haning Galih Rani Kumbara." />
    <meta name="theme-color" content="#3B82F6">

    {{-- Title --}}
    <title>@yield('title')</title>

    {{-- Favicon --}}
    <link rel="icon" href="{{ url('img/logo.svg?v=2') }}" type="image/svg" />

    {{-- Laravel CSRF Token --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {{-- Google Fonts CDN --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    {{-- Alpine.js CDN --}}
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>

    {{-- Vite - Tailwind CSS --}}
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="flex flex-col h-screen bg-gray-50 bg-body bg-blend-multiply">
    {{-- Header --}}
    @livewire('navigation-menu')

    {{-- Content --}}
    <main class="container max-w-7xl mx-auto p-4 sm:p-6 lg:p-8 space-y-8">
        <div class="font-sans text-gray-900 antialiased space-y-8">{{ $slot }}</div>
    </main>

    {{-- Footer --}}
    <x-footer />
    
    @livewireScripts
</body>

</html>
