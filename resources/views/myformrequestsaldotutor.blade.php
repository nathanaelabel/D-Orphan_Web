FORM ADD COURSE
<div></div>
<form action="{{ route('myrequestsaldotutor.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div>
        <label>tutor_id: 1</label>
    </div>
    <div>
        <label>jumlah saldo saat ini: {{App\Models\Tutor::findOrFail(1)->user->money}}</label>
    </div>
    <div>
        <label>amount:</label>
        <input type="text" required name="amount">
    </div>
    <div>
        <button type="submit">Tambahkan</button>
    </div>
</form>
