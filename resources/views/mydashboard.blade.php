@if (session('status'))
{{ session('status') }}
@endif

@empty($pengurus)
########################TUTOR
//////////////////////////////////////////showtransaction
<div></div>
<a href="{{ route('myrequestsaldotutor.create') }}">TARIK SALDO</a>
@if ($transactionDatas)
    @foreach ($transactionDatas as $transactionData)
        @if ($transactionData->status == 'pending')
        <div></div>
            PENDING
            <div></div>
            {{ $loop->iteration }}. amount: {{ $transactionData->amount }}
            <div></div>
            status: {{ $transactionData->status }}
            <div></div>
            description: {{ $transactionData->description }}
            <div></div>
            updated_at: {{ $transactionData->updated_at }}
            <div></div>
            <a href="myrequestsaldotutor/canceled/ {{ $transactionData->id }}">CANCEL</a>
        @elseif ($transactionData->status == 'complete')
        <div></div>
            COMPLETE
            <div></div>
            {{ $loop->iteration }}. amount: {{ $transactionData->amount }}
            <div></div>
            status: {{ $transactionData->status }}
            <div></div>
            description: {{ $transactionData->description }}
            <div></div>
            updated_at: {{ $transactionData->updated_at }}
            <div></div>
        @elseif ($transactionData->status == 'canceled')
        <div></div>
            CANCELED
            <div></div>
            {{ $loop->iteration }}. amount: {{ $transactionData->amount }}
            <div></div>
            status: {{ $transactionData->status }}
            <div></div>
            description: {{ $transactionData->description }}
            <div></div>
            updated_at: {{ $transactionData->updated_at }}
            <div></div>
        @endif
    @endforeach
@else
    Tidak ada data transaksi!
@endif
<div></div>

///////////////////////////////////////////showcoursebooking
<div></div>
@if ($courseBookingDatas)
    @foreach ($courseBookingDatas as $courseBookingData)
        @if ($courseBookingData->status == 'pending')
            PENDING
            <div></div>
            {{ $loop->iteration }}. Orphanage name: {{ $courseBookingData->orphanage->name }}
            <div></div>
            photo url: {{ $courseBookingData->orphanage->photo_url }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
            <a href="mydashboard/canceled/ {{ $courseBookingData->id }}">TOLAK</a>
            <div></div>
            <a href="mydashboard/ongoing/ {{ $courseBookingData->id }}">TERIMA</a>
            <div></div>
        @elseif($courseBookingData->status == 'ongoing')
            ONGOING
            <div></div>
            {{ $loop->iteration }}. Orphanage name: {{ $courseBookingData->orphanage->name }}
            <div></div>
            photo url: {{ $courseBookingData->orphanage->photo_url }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
            <a href="mydashboard/canceled/ {{ $courseBookingData->id }}">CANCEL</a>
            <div></div>
            <a href="mydashboard/complete/ {{ $courseBookingData->id }}">COMPLETE</a>
            <div></div>
        @elseif($courseBookingData->status == 'complete')
            COMPLETE
            <div></div>
            {{ $loop->iteration }}. Orphanage name: {{ $courseBookingData->orphanage->name }}
            <div></div>
            photo url: {{ $courseBookingData->orphanage->photo_url }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
        @elseif($courseBookingData->status == 'canceled')
            CANCELED
            <div></div>
            {{ $loop->iteration }}. Orphanage name: {{ $courseBookingData->orphanage->name }}
            <div></div>
            photo url: {{ $courseBookingData->orphanage->photo_url }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
        @endif
    @endforeach
@else
    Tidak ada data reservasi kursus!
@endif
<div></div>
@else
#################################PENGURUS PA
<div></div>
///////////////////////////////////////////showcoursebooking
<div></div>
@if ($courseBookingDatas)
    @foreach ($courseBookingDatas as $courseBookingData)
        @if ($courseBookingData->status == 'pending')
            PENDING
            <div></div>
            {{ $loop->iteration }}. Tutor name: {{ $courseBookingData->course->tutor->user->name }}
            <div></div>
            photo url: {{ $courseBookingData->course->tutor->user->profile_photo_path }}
            <div></div>
            gender: {{ $courseBookingData->course->tutor->user->gender }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
            <a href="mydashboard/canceled/ {{ $courseBookingData->id }}">CANCEL</a>
            <div></div>
        @elseif($courseBookingData->status == 'ongoing')
            ONGOING
            <div></div>
            <div></div>
            {{ $loop->iteration }}. Tutor name: {{ $courseBookingData->course->tutor->user->name }}
            <div></div>
            photo url: {{ $courseBookingData->course->tutor->user->profile_photo_path }}
            <div></div>
            gender: {{ $courseBookingData->course->tutor->user->gender }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
            <a href="mydashboard/canceled/ {{ $courseBookingData->id }}">CANCEL</a>
            <div></div>
            <a href="mydashboard/complete/ {{ $courseBookingData->id }}">COMPLETE</a>
            <div></div>
        @elseif($courseBookingData->status == 'complete')
            COMPLETE
            <div></div>
            {{ $loop->iteration }}. Tutor name: {{ $courseBookingData->course->tutor->user->name }}
            <div></div>
            photo url: {{ $courseBookingData->course->tutor->user->profile_photo_path }}
            <div></div>
            gender: {{ $courseBookingData->course->tutor->user->gender }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
        @elseif($courseBookingData->status == 'canceled')
            CANCELED
            <div></div>
            {{ $loop->iteration }}. Tutor name: {{ $courseBookingData->course->tutor->user->name }}
            <div></div>
            photo url: {{ $courseBookingData->course->tutor->user->profile_photo_path }}
            <div></div>
            gender: {{ $courseBookingData->course->tutor->user->gender }}
            <div></div>
            course name: {{ $courseBookingData->course->skill->name }}
            <div></div>
            location request(offline/online?):
            @if ($courseBookingData->course->is_online == 0)
                Offline
            @else
                Online
            @endif
            @if ($courseBookingData->course->is_visit == 1)
                <div></div>
                @if ($courseBookingData->is_visit == 1)
                    Visit to Panti
                @else
                    Not Visit to Panti
                @endif
            @endif
            <div></div>
            member count/member max:
            {{ $courseBookingData->orphanCourseBookings->count() }}/{{ $courseBookingData->course->maximum_member }}
            <div></div>
            updated_at: {{ $courseBookingData->updated_at }}
            <div></div>
        @endif
    @endforeach
@else
    Tidak ada data reservasi kursus!
@endif
@endempty
