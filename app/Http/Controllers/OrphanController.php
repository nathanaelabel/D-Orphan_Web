<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreOrphanRequest;
use App\Http\Requests\UpdateOrphanRequest;
use App\Models\Orphan;

class OrphanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view(
            'orphan.create',
            [
                'orphan' => Orphan::all(),
            ]
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(StoreOrphanRequest $request)
    {
        $check = Orphan::insert([
            'orphanage_id' => $request->orphanage_id,
            'name' => $request->name,
            'date_of_birth' => $request->date_of_birth,
            'gender' => $request->gender,
            'note' => $request->note,
        ]);

        $status = 'Failed to add!';
        if ($check) {
            $status = 'Has been added!';
        }

        return redirect('/getshoworphan')->with([
            'status' => $status,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Orphan $orphan)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Orphan $orphan)
    {
        return view('editorphan', [
            'orphanData' => Orphan::findOrFail($orphan->id),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateOrphanRequest $request, Orphan $orphan)
    {
        $check = Orphan::findOrFail($orphan)->update([
            'orphanage_id' => $request->orphanage_id,
            'name' => $request->name,
            'date_of_birth' => $request->date_of_birth,
            'gender' => $request->gender,
            'note' => $request->note,
        ]);

        $status = 'Failed to add!';
        if ($check) {
            $status = 'Has been edited!';
        }

        return redirect(route('showorphan.show', $orphan))->with([
            'status' => $status,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Orphan $orphan)
    {
        $check = Orphan::findOrFail($orphan)->delete();

        $status = 'Failed to delete!';
        if ($check) {
            $status = 'Has been deleted!';
        }

        return redirect('/getshoworphan')->with([
            'status' => $status,
        ]);
    }
}
