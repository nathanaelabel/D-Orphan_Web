<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreOrphanageRequest;
use App\Http\Requests\UpdateOrphanageRequest;
use App\Models\Orphanage;

class OrphanageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('listpa', [
            'paDatas' => Orphanage::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreOrphanageRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreOrphanageRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Orphanage  $orphanage
     * @return \Illuminate\Http\Response
     */
    public function show($orphanageId)
    {
        return view('orphanagedetail', [
            'paDatas' => Orphanage::findOrFail($orphanageId),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Orphanage  $orphanage
     * @return \Illuminate\Http\Response
     */
    public function edit(Orphanage $orphanage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateOrphanageRequest  $request
     * @param  \App\Models\Orphanage  $orphanage
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateOrphanageRequest $request, Orphanage $orphanage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Orphanage  $orphanage
     * @return \Illuminate\Http\Response
     */
    public function destroy(Orphanage $orphanage)
    {
        //
    }
}
