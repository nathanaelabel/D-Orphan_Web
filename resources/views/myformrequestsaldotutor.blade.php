FORM ADD COURSE
<div></div>
<form action="{{ route('myrequestsaldotutor.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div>
        <label>tutor_id: 1</label>
    </div>
    <div>
        <label>amount:</label>
        <input type="text" required name="amount">
    </div>
    <div>
        <label>decription:</label>
        <input type="text" required name="description">
    </div>
    <div>
        <button type="submit">Tambahkan</button>
    </div>
</form>
