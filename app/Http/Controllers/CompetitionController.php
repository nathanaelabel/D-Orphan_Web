<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCompetitionRequest;
use App\Http\Requests\UpdateCompetitionRequest;
use App\Models\Competition;
use App\Models\User;

class CompetitionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('mytutorfindcompetition', [
            'competitionDatas' => Competition::all(),
        ]);
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
    public function store(StoreCompetitionRequest $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show($competitionId)
    {
        return view('competitionDetail', [
            'compDatas' => Competition::findOrFail($competitionId),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Competition $competition)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCompetitionRequest $request, Competition $competition)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Competition $competition)
    {
    }

    public function getTutorCompetitionPA()
    {
        // return view('myfindtutorcompetitionpa', [
        //         'paDatas' => Competition::where('tutor_id', User::where('user_type', 'Tutor')->first())->pluck('type')->unique(),
        //     ]);
    }
}
