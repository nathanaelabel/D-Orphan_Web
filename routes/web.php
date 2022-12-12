<?php

use App\Http\Controllers\TransactionController;
use App\Http\Controllers\CompetitionController;
use App\Http\Controllers\CompetitionRecommendationController;
use App\Http\Controllers\CourseBookingController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\OrphanCrController;
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
})->name('/');

Route::get('/donasi', function () {
    return view('dashboard');
})->name('/donasi');
Route::get('/cari', function () {
    return view('cari');
})->name('cari');

Route::get('/mydashboard', [DashboardController::class, 'index']);
Route::get('/mydashboard/{status}/{courseBookingId}', [CourseBookingController::class, 'changeCourseBookingStatus']);

Route::get('/getmytutorcoursecollection', [CourseController::class, 'getTutorCourseCollection']);
Route::resource('/mytutorcoursecaollection', CourseController::class);

Route::resource('/mytutorcompetition', CompetitionController::class);
Route::get('/getmytutorcompetition/{competitionId}', [CompetitionRecommendationController::class, 'index']);
Route::get('/mytutororphancrs/{competitionRecommendationId}', [OrphanCrController::class, 'show']);

Route::resource('/myrequestsaldotutor', TransactionController::class);
Route::get('/myrequestsaldotutor/{status}/{transactionId}', [TransactionController::class, 'changeTransactionStatus']);

Route::get('/myadminrequestsaldotutor', [TransactionController::class, 'index']);

Route::get('/myfindpaskill', [CourseController::class, 'getPaSkill']);

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dasbor');

    Route::get('lomba', function () {
        return view('dashboard');
    })->name('lomba');
    Route::get('/donasi', function () {
        return view('dashboard');
    })->name('donasi');
});
