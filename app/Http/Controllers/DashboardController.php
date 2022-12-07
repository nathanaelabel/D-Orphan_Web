<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\CourseBooking;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // if (auth()->user()->user_type == 'Tutor') {
        // return view('mydashboard')->with([
        //         'transactionDatas' => User::where('user_type', 'Tutor')->first()->transactions,
        //         'courseBookingDatas' => CourseBooking::whereIn('course_id', Course::where('tutor_id', User::where('user_type', 'Tutor')->first()->tutor->id)->pluck('id'))->get(),
        //     ]);
        // // } elseif (auth()->user()->user_type == 'Pengurus Panti') {
        return view('mydashboard')->with([
                'courseBookingDatas' => User::where('user_type', 'Pengurus Panti')->first()->courseBookings,
                'pengurus' => ['data ini dihapus aja'],
            ]);
        // }
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
    public function store(Request $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }
}
