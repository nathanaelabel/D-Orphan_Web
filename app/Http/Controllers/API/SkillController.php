<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\StoreskillRequest;
use App\Http\Requests\UpdateskillRequest;
use App\Models\skill;

class SkillController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Http\Requests\StoreskillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreskillRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function show(skill $skill)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function edit(skill $skill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateskillRequest  $request
     * @param  \App\Models\skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateskillRequest $request, skill $skill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function destroy(skill $skill)
    {
        //
    }
}
