FORM ADD COURSE
<div></div>
<form action="{{ route('mytutorcoursecollection.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div>
        <label>tutor_id: 1</label>
    </div>
    <div>
        <label>skill name:</label>
        <select name="skill_id" required>
            @foreach ($skillDatas as $skillData)
                <option value="{{ $skillData->id }}">{{ $skillData->name }}</option>
            @endforeach
        </select>
    </div>
    <div>
        <label>description course:</label>
        <input type="text" required name="description">
    </div>
    <div>
        <label>location course:</label>
        <input type="text" required name="location">
    </div>
    <div>
        <label>hourly price:</label>
        <input type="text" required name="hourly_price">
    </div>
    <div>
        <label>tool price:</label>
        <input type="text" required name="tool_price">
    </div>
    <div>
        <label>is online:</label>
        <select name="is_online" required>
            <option value="1">yes</option>
            <option value="0">no</option>
        </select>
    </div>
    <div>
        <label>is visit:</label>
        <select name="is_visit" required>
            <option value="1">yes</option>
            <option value="0">no</option>
        </select>
    </div>
    <div>
        <label>max member:</label>
        <input type="text" required name="maximum_member">
    </div>
    <div>
        <label>tool decription:</label>
        <input type="text" required name="tool_description">
    </div>
    <div>
        <button type="submit">Tambahkan</button>
    </div>
</form>
