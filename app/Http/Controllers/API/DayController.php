<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\StoredayRequest;
use App\Http\Requests\UpdatedayRequest;
use App\Models\day;

class DayController extends Controller
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
     * @param  \App\Http\Requests\StoredayRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoredayRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\day  $day
     * @return \Illuminate\Http\Response
     */
    public function show(day $day)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\day  $day
     * @return \Illuminate\Http\Response
     */
    public function edit(day $day)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatedayRequest  $request
     * @param  \App\Models\day  $day
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatedayRequest $request, day $day)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\day  $day
     * @return \Illuminate\Http\Response
     */
    public function destroy(day $day)
    {
        //
    }
}
