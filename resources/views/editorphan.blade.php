Form Edit Orphan / Ubah Peserta Kursus
<div></div>
<form action="{{ route('showorphan.update', $orphanData->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="_method" value="PATCH">
    <div>
        <label>Nama Peserta Kursus:</label>
        <input type="text" required name="name" value="{{ $orphanData->name }}">
    </div>
    <div>
        <label>Tanggal Lahir:</label>
        <input type="date" required name="date_of_birth" value="{{ $orphanData->date_of_birth }}">
    </div>
    <div>
        <label>Jenis Kelamin:</label>
        <select name="gender" required>
            <option hidden value="{{ $orphanData->gender }}">{{ $orphanData->gender }}</option>
            <option value="Male">Laki-laki</option>
            <option value="Female">Perempuan</option>
        </select>
    </div>
    <div>
        <label>Catatan:</label>
        <input type="text" required name="note" value="{{ $orphanData->note }}">
    </div>
    <div>
        <button type="submit">Ubah Peserta Kursus</button>
    </div>
</form>
