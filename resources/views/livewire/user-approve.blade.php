@section('title', 'Kelengkapan Data')

<div>
    <div class="bg-white rounded-2xl shadow p-4 lg:p-8 grid gap-4">

        <p class="text-2xl leading-8 font-semibold text-center">Atur Data Akun</p>
        <hr class="my-4">
        <div class="space-y-4">
            <div class="grid gap-2">
                @if (auth()->user()->user_type == 'Pengurus Panti')
                    <div class="space-y-1">
                        <x-label>
                            <x-slot:for>photo_url</x-slot:for>
                            <x-slot:slot>Foto Panti</x-slot:slot>
                        </x-label>

                        <img src="/public/images/{{ $image }}" alt="Foto Panti">
                        <input type="file" wire:model="image">
                    </div>
                    <br>
                @endif

                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>name</x-slot:for>
                        <x-slot:slot>
                            @if (auth()->user()->user_type == 'Pengurus Panti')
                                Nama Panti
                            @else
                                Rekening Tutor
                            @endif
                        </x-slot:slot>
                    </x-label>
                    @if (auth()->user()->user_type == 'Pengurus Panti')
                        <x-input wire:model="name">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>name</x-slot:name>
                            <x-slot:id>name</x-slot:id>
                            <x-slot:placeholder>Sinar Bangsa</x-slot:placeholder>
                        </x-input>
                    @else
                        <x-input wire:model="bank_account">
                            <x-slot:type>text</x-slot:type>
                            <x-slot:name>bank_account</x-slot:name>
                            <x-slot:id>bank_account</x-slot:id>
                            <x-slot:placeholder>XXXXXXX</x-slot:placeholder>
                        </x-input>
                    @endif
                </div>

                <br>
                <div class="space-y-3">
                    <x-label>
                        <x-slot:for>gender</x-slot:for>
                        <x-slot:slot>
                            @if (auth()->user()->user_type == 'Pengurus Panti')
                                Jenis Kelamin Pengurus Panti
                            @else
                                Jenis Kelamin Tutor
                            @endif
                        </x-slot:slot>
                    </x-label>
                    <div class="flex gap-6 mt-1">
                        <div class="flex gap-2 cursor-pointer items-center">
                            <input id="male"
                                class="peer/panti checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                type="radio" name="gender" value="Male"
                                @if ($gender == 'Male') checked @endif wire:model="gender" />
                            <label for="male" class="peer-checked/panti:text-blue-500 cursor-pointer">Pria</label>
                        </div>
                        <div class="flex gap-2 cursor-pointer items-center">
                            <input id="female"
                                class="peer/tutor checked:bg-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer"
                                type="radio" name="gender" value="Female"
                                @if ($gender == 'Female') checked @endif wire:model="gender" />
                            <label for="female" class="peer-checked/tutor:text-blue-500 cursor-pointer">Wanita</label>
                        </div>
                    </div>
                </div>

                <br>
                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>phone_number</x-slot:for>
                        <x-slot:slot>
                        @if (auth()->user()->user_type == 'Pengurus Panti')
                                Nomor Telepon Panti
                            @else
                                Nomor Telepon Tutor
                            @endif
                        </x-slot:slot>
                    </x-label>

                    <x-input wire:model="phone_number">
                        <x-slot:type>text</x-slot:type>
                        <x-slot:name>phone_number</x-slot:name>
                        <x-slot:id>phone_number</x-slot:id>
                        <x-slot:placeholder>08XXXXXXXX</x-slot:placeholder>
                    </x-input>
                </div>
                <br>
                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>address</x-slot:for>
                        <x-slot:slot>
                            @if (auth()->user()->user_type == 'Pengurus Panti')
                                Alamat Panti
                            @else
                                Alamat Tutor
                            @endif
                        </x-slot:slot>
                    </x-label>

                    <x-input wire:model="address">
                        <x-slot:type>text</x-slot:type>
                        <x-slot:name>address</x-slot:name>
                        <x-slot:id>address</x-slot:id>
                        <x-slot:placeholder>Jl. Pahlawan No. 2B</x-slot:placeholder>
                    </x-input>
                </div>
                <br>
                <div class="space-y-1">
                    <x-label>
                        <x-slot:for>description</x-slot:for>
                        <x-slot:slot>
                            @if (auth()->user()->user_type == 'Pengurus Panti')
                                Deskripsi Panti
                            @else
                                Deskripsi Tutor
                            @endif
                        </x-slot:slot>
                    </x-label>
                    <x-textarea wire:model="description" required>
                        <x-slot:maxlength>255</x-slot:maxlength>
                        <x-slot:placeholder>Masukkan deskripsi</x-slot:placeholder>
                    </x-textarea>
                </div>
            </div>
        </div>
        <button wire:click='openModalConfirmation'
            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
            <p class="font-semibold text-white">Simpan</p>
        </button>
    </div>

    <br><br><br>
    @if (auth()->user()->user_type == 'Tutor')
        <div class="space-y-4">
            <div class="flex justify-between items-center">
                <p class="text-2xl leading-8 font-semibold">
                    @if (auth()->user()->is_access == '1')
                        Atur
                    @else
                        Tambah
                    @endif Jadwal
                </p>
                <a wire:click='addData' class="cursor-pointer">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6 text-blue-500">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        <title>Tambah</title>
                    </svg>
                </a>
            </div>

            <div class="bg-white rounded-2xl shadow p-4 lg:p-8 grid gap-4">
                <div class="grid gap-4 lg:flex">
                    <div class="space-y-1 w-full">
                        <x-label>
                            <x-slot:for>day</x-slot:for>
                            <x-slot:slot>Hari</x-slot:slot>
                        </x-label>

                        <div>
                            <select id="day" name="day" wire:model="day"
                                class="w-full rounded-md border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 pl-3 pr-10 py-2 cursor-pointer">

                                @foreach ($days as $item)
                                    <option value="{{ $loop->iteration }}">
                                        {{ $item }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="space-y-1 w-full">
                        <x-label>
                            <x-slot:for>start_time</x-slot:for>
                            <x-slot:slot>Jam Mulai</x-slot:slot>
                        </x-label>

                        <x-input wire:model="start_time" class="cursor-text w-full">
                            <x-slot:type>time</x-slot:type>
                            <x-slot:name>start_time</x-slot:name>
                            <x-slot:id>start_time</x-slot:id>
                            <x-slot:placeholder></x-slot:placeholder>
                        </x-input>
                    </div>

                    <div class="space-y-1 w-full">
                        <x-label>
                            <x-slot:for>end_time</x-slot:for>
                            <x-slot:slot>Jam Akhir</x-slot:slot>
                        </x-label>

                        <x-input wire:model="end_time" class="cursor-text w-full">
                            <x-slot:type>time</x-slot:type>
                            <x-slot:name>end_time</x-slot:name>
                            <x-slot:id>end_time</x-slot:id>
                            <x-slot:placeholder></x-slot:placeholder>
                        </x-input>
                    </div>
                </div>

                <details open class="space-y-2">
                    <summary class="text-xl leading-8 font-semibold">Jadwal Kursus</summary>
                    @if (count($tutorDayTimeRanges) > 0)
                        <div>
                            <span class="hidden lg:flex gap-2 pl-1 pr-2 py-1 font-medium">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="2" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                                    <title>Jumlah Jadwal Tutor</title>
                                </svg>
                                {{ count($tutorDayTimeRanges) }} Jadwal
                            </span>
                        </div>
                    @endif
                    @if (count($tutorDays) > 0)
                        <div class="flex items-center justify-between">
                            {{-- Schedule --}}
                            <p class="text-xl leading-8 font-semibold">Pilih Hari</p>
                            {{-- Dropdown Sort --}}
                            <select id="sort_dailySchedule" name="sort_dailySchedule"
                                wire:model="dailyScheduleDropdownSort"
                                class="dropdown w-fit rounded-md shadow-sm pl-3 pr-10 font-medium border-transparent focus:border-transparent bg-blue-500 text-white focus:ring focus:ring-blue-500 focus:ring-opacity-50 cursor-pointer">
                                @foreach ($tutorDays as $item)
                                    <option {{ $dailyScheduleDropdownSort == $item->day ? 'selected' : null }}>
                                        {{ $item->day }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    @endif
                    <div class="overflow-x-auto shadow rounded">
                        <table class="min-w-full">
                            <thead class="bg-gray-500 text-white">
                                <tr>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                        Hari</th>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                        Jam Awal</th>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                        Jam Akhir</th>
                                    <th scope="col"
                                        class="sticky top-0 z-10 px-3 py-3.5 text-left font-semibold w-fit">
                                        Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($tutorDayTimeRanges as $item)
                                    @if ($item->dayTimeRange->day->day == $dailyScheduleDropdownSort)
                                        <tr class="odd:bg-white even:bg-gray-100">
                                            <td class="whitespace-nowrap px-3 py-4">
                                                {{ $item->dayTimeRange->day->day }}
                                            </td>
                                            <td class="whitespace-nowrap px-3 py-4">
                                                {{ $item->dayTimeRange->start_time }}
                                            </td>
                                            <td class="whitespace-nowrap px-3 py-4">
                                                {{ $item->dayTimeRange->end_time }}
                                            </td>
                                            <td class="whitespace-nowrap px-3 py-4 flex gap-2">
                                                {{-- Hapus --}}
                                                <a wire:click.prevent='deleteTutorDayTimeRange({{ $item->id }})'
                                                    class="cursor-pointer text-red-500">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                                        viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                                        class="w-6 h-6 text-red-500">
                                                        <path stroke-linecap="round" stroke-linejoin="round"
                                                            d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                        <title>Hapus</title>
                                                    </svg>
                                                </a>
                                            </td>
                                        </tr>
                                    @endif
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </details>
            </div>
        </div>
    @endif

    @if ($showFormConfirmation)
        <div class="fixed z-50 inset-0 overflow-y-hidden" aria-labelledby="modal-title" role="dialog"
            aria-modal="true">
            <div class="flex items-center justify-center min-h-screen p-4">
                <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true">
                </div>

                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div
                    class="relative inline-block bg-white rounded-lg px-4 pt-5 pb-4 overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-fit sm:w-full sm:p-6 space-y-8">
                    <div>
                        <p class="text-2xl leading-8 font-semibold text-center" id="modal-title">
                            Simpan
                        </p>
                        <hr class="my-4">
                        <p class="text-gray-500">Konfirmasi bahwa @yield('title') yang Anda pilih akan disimpan
                        </p>
                    </div>
                    <div class="grid gap-4 lg:flex">
                        <button wire:click='closeModalConfirmation'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-red-100 hover:bg-red-200 focus:ring focus:ring-red-100 focus:ring-opacity-50 active:bg-red-100 active:border-red-100">
                            <p class="font-semibold text-red-700">Batal</p>
                        </button>
                        <button wire:click='saveUser'
                            class="w-full inline-flex justify-center items-center space-x-2 rounded focus:outline-none px-3 py-2 leading-6 bg-blue-500 hover:bg-blue-600 focus:ring focus:ring-blue-500 focus:ring-opacity-50 active:bg-blue-500 active:border-blue-500">
                            <p class="font-semibold text-white">Simpan</p>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
