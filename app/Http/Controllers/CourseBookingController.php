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
    public function store(StoreCourseBookingRequest $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(CourseBooking $courseBooking)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(CourseBooking $courseBooking)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCourseBookingRequest $request, CourseBooking $courseBooking)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(CourseBooking $courseBooking)
    {
    }

    public function changeCourseBookingStatus($status, $courseBookingId)
    {
        $check = CourseBooking::findOrFail($courseBookingId)->update([
            'status' => $status,
        ]);

        if ($check) {
            if ($status == 'ongoing') {
                return redirect('/mydashboard')->with('status', 'Has been accepted!');
            } elseif ($status == 'complete') {
                return redirect('/mydashboard')->with('status', 'Has been completed!');
            } elseif ($status == 'canceled') {
                return redirect('/mydashboard')->with('status', 'Has been canceled!');
            } elseif ($status == 'complete') {
                return redirect('/mydashboard')->with('status', 'Has been completed!');
            }
        } else {
            return redirect('/mydashboard')->with('status', 'Failed!');
        }
    }
}
