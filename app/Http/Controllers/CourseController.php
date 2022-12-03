<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Skill;
use App\Models\User;
use Illuminate\Http\Request;

class CourseController extends Controller
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
        return view('myformaddtutorcoursecollection', [
            'skillDatas' => Skill::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $check = Course::insert([
            'tutor_id' => 1,
            'skill_id' => $request->skill_id,
            'description' => $request->description,
            'location' => $request->location,
            'hourly_price' => $request->hourly_price,
            'tool_price' => $request->tool_price,
            'is_online' => $request->is_online,
            'is_visit' => $request->is_visit,
            'maximum_member' => $request->maximum_member,
            'tool_description' => $request->tool_description,
        ]);

        $status = 'Failed to add!';
        if ($check) {
            $status = 'Has been added!';
        }

        return redirect('/getmytutorcoursecollection')->with([
            'status' => $status,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show($courseId)
    {
        return view('mydetailtutorcoursecollection', [
            'courseData' => Course::findOrFail($courseId),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($courseId)
    {
        return view('myformedittutorcoursecollection', [
            'courseData' => Course::findOrFail($courseId),
            'skillDatas' => Skill::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $courseId)
    {
        $check = Course::findOrFail($courseId)->update([
            'skill_id' => $request->skill_id,
            'description' => $request->description,
            'location' => $request->location,
            'hourly_price' => $request->hourly_price,
            'tool_price' => $request->tool_price,
            'is_online' => $request->is_online,
            'is_visit' => $request->is_visit,
            'maximum_member' => $request->maximum_member,
            'tool_description' => $request->tool_description,
        ]);

        $status = 'Failed to edit!';
        if ($check) {
            $status = 'Has been edited!';
        }

        return redirect(route('mytutorcoursecollection.show', $courseId))->with([
            'status' => $status,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($courseId)
    {
        $check = Course::findOrFail($courseId)->delete();

        $status = 'Failed to delete!';
        if ($check) {
            $status = 'Has been deleted!';
        }

        return redirect('/getmytutorcoursecollection')->with([
            'status' => $status,
        ]);
    }

    public function getTutorCourseCollection()
    {
        return view('mytutorcoursecollection', [
                'courseDatas' => User::where('user_type', 'Tutor')->first()->tutor->courses,
            ]);
    }

    public function getPaSkill()
    {
        return view('myfindpaskill', [
                'skillDatas' => Skill::all(),
            ]);
    }
}
