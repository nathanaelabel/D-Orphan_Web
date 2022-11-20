<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\StoreCompetitionRequest;
use App\Http\Requests\UpdateCompetitionRequest;
use App\Models\Competition;
use Illuminate\Http\Request;

class CompetitionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if($request->id){
            return response()->json(Competition::find($id)->toJson());        
        }else{
            if($request->tutor_id && $request->category_id){
                return 'request berdasar tutor id dan category id';
            }else if($request->tutor_id){
                return 'request berdasar tutor id';
            }else if($request->category_id){
                return 'request berdasar category id';
            }else{
                return response()->json(Competition::all()->toJson());        
            }
        }

        
    }
}
