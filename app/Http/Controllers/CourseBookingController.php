<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCourseBookingRequest;
use App\Http\Requests\UpdateCourseBookingRequest;
use App\Models\CourseBooking;

class CourseBookingController extends Controller
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
     * @param  \App\Http\Requests\StoreCourseBookingRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCourseBookingRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CourseBooking  $courseBooking
     * @return \Illuminate\Http\Response
     */
    public function show(CourseBooking $courseBooking)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CourseBooking  $courseBooking
     * @return \Illuminate\Http\Response
     */
    public function edit(CourseBooking $courseBooking)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCourseBookingRequest  $request
     * @param  \App\Models\CourseBooking  $courseBooking
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCourseBookingRequest $request, CourseBooking $courseBooking)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CourseBooking  $courseBooking
     * @return \Illuminate\Http\Response
     */
    public function destroy(CourseBooking $courseBooking)
    {
        //
    }
}
