Tampilan Peserta Kursus / Nama Peserta Kursus
@if (session('status'))
    {{ session('status') }}
@endif
<div></div>
<a href="{{ route('showorphan.create') }}">Tambah Peserta</a>
<div></div>
@if ($orphanDatas->isNotEmpty())
    @foreach ($orphanDatas as $orphanData)
        <div></div>
        {{ $loop->iteration }}.
        Nama Peserta Kursus: {{ $orphanData->name }}
        <div></div>
        <form action="{{ route('showorphan.edit', $orphanData->id) }}" method="POST">
            @csrf
            <button type="submit">Ubah</button>
        </form>
        <form action="{{ route('showorphan.destroy', $orphanData->id) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit">Hapus</button>
        </form>
        <div></div>
    @endforeach
@else
    Tidak ada data anak Panti.
@endif
<div></div>
