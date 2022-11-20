<?php

namespace App\Http\Controllers;

use App\Http\Requests\Storeday_time_rangeRequest;
use App\Http\Requests\Updateday_time_rangeRequest;
use App\Models\day_time_range;

class DayTimeRangeController extends Controller
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
     * @param  \App\Http\Requests\Storeday_time_rangeRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Storeday_time_rangeRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\day_time_range  $day_time_range
     * @return \Illuminate\Http\Response
     */
    public function show(day_time_range $day_time_range)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\day_time_range  $day_time_range
     * @return \Illuminate\Http\Response
     */
    public function edit(day_time_range $day_time_range)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Updateday_time_rangeRequest  $request
     * @param  \App\Models\day_time_range  $day_time_range
     * @return \Illuminate\Http\Response
     */
    public function update(Updateday_time_rangeRequest $request, day_time_range $day_time_range)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\day_time_range  $day_time_range
     * @return \Illuminate\Http\Response
     */
    public function destroy(day_time_range $day_time_range)
    {
        //
    }
}
