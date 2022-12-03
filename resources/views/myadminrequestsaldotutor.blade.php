@if (session('status'))
    {{ session('status') }}
@endif
@if ($transactionDatas->isNotEmpty())
    @foreach ($transactionDatas as $transactionData)
        @if ($transactionData->status == 'pending')
            <div></div>
            PENDING
            <div></div>
            {{ $loop->iteration }}. tutor name: {{ $transactionData->user->name }}
            <div></div>
            photo path tutor: {{ $transactionData->user->profile_photo_path }}
            <div></div>
            amount: {{ $transactionData->amount }}
            <div></div>
            status: {{ $transactionData->status }}
            <div></div>
            updated_at: {{ $transactionData->updated_at }}
            <div></div>
            <a href="myrequestsaldotutor/canceled/ {{ $transactionData->id }}">TOLAK</a>
            <div></div>
            <a href="myrequestsaldotutor/complete/ {{ $transactionData->id }}">TERIMA</a>
            <div></div>
        @elseif ($transactionData->status == 'complete')
            <div></div>
            COMPLETE
            <div></div>
            {{ $loop->iteration }}. tutor name: {{ $transactionData->user->name }}
            <div></div>
            photo path tutor: {{ $transactionData->user->profile_photo_path }}
            <div></div>
            amount: {{ $transactionData->amount }}
            <div></div>
            status: {{ $transactionData->status }}
            <div></div>
            updated_at: {{ $transactionData->updated_at }}
            <div></div>
        @elseif ($transactionData->status == 'canceled')
            <div></div>
            CANCELED
            <div></div>
            {{ $loop->iteration }}. tutor name: {{ $transactionData->user->name }}
            <div></div>
            photo path tutor: {{ $transactionData->user->profile_photo_path }}
            <div></div>
            amount: {{ $transactionData->amount }}
            <div></div>
            status: {{ $transactionData->status }}
            <div></div>
            updated_at: {{ $transactionData->updated_at }}
            <div></div>
        @endif
    @endforeach
@else
    Tidak ada data request penarikan saldo dari Tutor!
@endif
