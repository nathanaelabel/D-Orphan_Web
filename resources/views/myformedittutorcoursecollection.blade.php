FORM EDIT COURSE
<div></div>
<form action="{{ route('mytutorcoursecollection.update', $courseData->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="_method" value="PATCH">
    <div>
        <label>skill name:</label>
        <select name="skill_id" required>
            @foreach ($skillDatas as $skillData)
                <option value="{{ $skillData->id }}" @if ($courseData->skill_id == $skillData->id) selected @endif>
                    {{ $skillData->name }}</option>
            @endforeach
        </select>
    </div>
    <div>
        <label>description course:</label>
        <input type="text" required name="description" value="{{ $courseData->description }}">
    </div>
    <div>
        <label>location course:</label>
        <input type="text" required name="location" value="{{ $courseData->location }}">
    </div>
    <div>
        <label>hourly price:</label>
        <input type="text" required name="hourly_price" value="{{ $courseData->hourly_price }}">
    </div>
    <div>
        <label>tool price:</label>
        <input type="text" required name="tool_price" value="{{ $courseData->tool_price }}">
    </div>
    <div>
        <label>is online:</label>
        <select name="is_online" required>
            <option value="1" @if ($courseData->is_online == 1) selected @endif>yes</option>
            <option value="0" @if ($courseData->is_online == 0) selected @endif>no</option>
        </select>
    </div>
    <div>
        <label>is visit:</label>
        <select name="is_visit" required>
            <option value="1" @if ($courseData->is_visit == 1) selected @endif>yes</option>
            <option value="0" @if ($courseData->is_visit == 0) selected @endif>no</option>
        </select>
    </div>
    <div>
        <label>max member:</label>
        <input type="text" required name="maximum_member" value="{{ $courseData->maximum_member }}">
    </div>
    <div>
        <label>tool decription:</label>
        <input type="text" required name="tool_description" value="{{ $courseData->tool_description }}">
    </div>
    <div>
        <button type="submit">Save Changes</button>
    </div>
</form>
