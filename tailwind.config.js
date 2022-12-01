const defaultTheme = require('tailwindcss/defaultTheme');

/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],
    theme: {
        extend: {
            backgroundImage: {
                'body': 'url(' + require('path').resolve(__dirname, 'public/img/background.svg') + ')',
                'home-tutor': 'url(' + require('path').resolve(__dirname, 'public/img/home-tutor.svg') + ')',
                'home-donasi-background': 'url(' + require('path').resolve(__dirname, 'public/img/home-donasi-background.svg') + ')',
                'authentication-background': 'url(' + require('path').resolve(__dirname, 'public/img/authentication-background.svg') + ')',
            },
            fontFamily: {
                'sans': 'Be Vietnam Pro, sans-serif',
            },
        },
    },
    plugins: [
        require('@tailwindcss/forms'),
        require('@tailwindcss/typography'),
    ],
};
