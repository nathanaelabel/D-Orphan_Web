<?php

namespace App\Http\Controllers;

use App\Http\Requests\Storecourse_bookings_day_time_rangesRequest;
use App\Http\Requests\Updatecourse_bookings_day_time_rangesRequest;
use App\Models\course_bookings_day_time_ranges;

class CourseBookingsDayTimeRangesController extends Controller
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
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Storecourse_bookings_day_time_rangesRequest $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(course_bookings_day_time_ranges $course_bookings_day_time_ranges)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(course_bookings_day_time_ranges $course_bookings_day_time_ranges)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Updatecourse_bookings_day_time_rangesRequest $request, course_bookings_day_time_ranges $course_bookings_day_time_ranges)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(course_bookings_day_time_ranges $course_bookings_day_time_ranges)
    {
    }
}
