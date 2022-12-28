<div>
    {{-- Form Tambah Peserta Kursus atau Anak Panti --}}
    <form wire:submit.prevent="createOrphan">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" wire:model="name">
        </div>
        <div class="form-group">
            <label for="date_of_birth">Date of Birth</label>
            <input type="date" class="form-control" wire:model="date_of_birth">
        </div>
        <div class="form-group">
            <label for="gender">Gender</label>
            <select class="form-control" wire:model="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
        </div>
        <div class="form-group">
            <label for="note">Note</label>
            <textarea class="form-control" rows="3" wire:model="note"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>

    <table class="table mt-4">
        <thead>
            <tr>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Note</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($orphans as $orphan)
                <tr>
                    <td>{{ $orphan->name }}</td>
                    <td>{{ $orphan->date_of_birth }}</td>
                    <td>{{ $orphan->gender }}</td>
                    <td>{{ $orphan->note }}</td>
                    <td>
                        <button wire:click="editOrphan({{ $orphan->id }})"
                            class="btn btn-sm btn-primary">Edit</button>
                        <button wire:click="deleteOrphan({{ $orphan->id }})"
                            class="btn btn-sm btn-danger">Delete</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    @if (session()->has('message'))
        <div class="alert alert-success mt-4">
            {{ session('message') }}
        </div>
    @endif
</div>
