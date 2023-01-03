Form Add Orphan / Tambah Peserta Kursus
<div></div>
<form action="{{ route('showorphan.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div>
        <label>Nama Peserta Kursus:</label>
        <input type="text" required name="name">
    </div>
    <div>
        <label>Tanggal Lahir:</label>
        <input type="date" required name="date_of_birth">
    </div>
    <div>
        <label>Jenis Kelamin:</label>
        <select name="gender" required>
            <option value="Male">Laki-laki</option>
            <option value="Female">Perempuan</option>
        </select>
    </div>
    <div>
        <label>Catatan:</label>
        <input type="text" name="note">
    </div>
    <div>
        <button type="submit">Tambah Peserta Kursus</button>
    </div>
</form>
