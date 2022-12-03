<?php

use App\Http\Controllers\CompetitionController;
use App\Http\Controllers\CourseBookingController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/mydashboard', [DashboardController::class, 'index']);
Route::get('/mydashboard/{status}/{courseBookingId}', [CourseBookingController::class, 'changeCourseStatus']);

Route::get('/getmytutorcoursecollection', [CourseController::class, 'getTutorCourseCollection']);
Route::resource('/mytutorcoursecollection', CourseController::class);

Route::get('/getmytutorcompetionpa', [CompetitionController::class, 'getTutorCompetionPA']);

Route::get('/myfindpaskill', [CourseController::class, 'getPaSkill']);

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
