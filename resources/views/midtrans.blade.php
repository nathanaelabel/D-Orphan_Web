@section('title', 'Konfirmasi Donasi')

<x-guest-layout>
    <div class="grid gap-6">
        <div class="overflow-x-auto shadow rounded">
            <table class="min-w-full">
                <thead class="bg-gray-500 text-white">
                    <tr>
                        <th scope="col" colspan="2" class="sticky top-0 z-10 px-3 py-3.5 text-center font-semibold">
                            Detail Donasi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="odd:bg-white even:bg-gray-100">
                        <td class="px-3 py-4 max-w-full whitespace-nowrap font-semibold">ID</td>
                        <td class="px-3 py-4 w-full">&#35;{{ $order->id }}</td>
                    </tr>
                    <tr class="odd:bg-white even:bg-gray-100">
                        <td class="px-3 py-4 max-w-full whitespace-nowrap font-semibold">Total Nominal</td>
                        <td class="px-3 py-4 w-full">
                            {{ 'Rp' . number_format($order->amount + (1 / 100) * $order->amount, 2, ',', '.') }}</td>
                    </tr>
                    <tr class="odd:bg-white even:bg-gray-100">
                        <td class="px-3 py-4 max-w-full whitespace-nowrap font-semibold">Status Pembayaran</td>
                        <td class="px-3 py-4 w-full">
                            @if ($order->status == 'pending')
                                Menunggu Pembayaran
                            @elseif ($order->status == 'complete')
                                Sudah Dibayar
                            @else
                                Kedaluwarsa
                            @endif
                        </td>
                    </tr>
                    <tr class="odd:bg-white even:bg-gray-100">
                        <td class="px-3 py-4 max-w-full whitespace-nowrap font-semibold">Tanggal</td>
                        <td class="px-3 py-4 w-full"> {{ date_format(date_create($order->created_at), 'd M Y, H:i') }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            @if ($order->status == 'pending')
                <x-primary-button id="pay-button">Kirim Donasi</x-primary-button>
            @else
                Pembayaran berhasil
            @endif
        </div>
    </div>

    <script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="{{ config('midtrans.client_key') }}">
    </script>
    <script>
        const payButton = document.querySelector('#pay-button');
        payButton.addEventListener('click', function(e) {
            e.preventDefault();
            snap.pay('{{ $snapToken }}', {
                // Optional
                onSuccess: function(result) {
                    /* You may add your own js here, this is just example */
                    // document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
                    console.log(result)
                },
                // Optional
                onPending: function(result) {
                    /* You may add your own js here, this is just example */
                    // document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
                    console.log(result)
                },
                // Optional
                onError: function(result) {
                    /* You may add your own js here, this is just example */
                    // document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
                    console.log(result)
                }
            });
        });
    </script>
</x-guest-layout>
