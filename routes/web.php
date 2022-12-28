<?php

use App\Http\Controllers\TransactionController;
use App\Http\Controllers\CompetitionController;
use App\Http\Controllers\CompetitionRecommendationController;
use App\Http\Controllers\CourseBookingController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\OrphanageController;
use App\Http\Controllers\OrphanCrController;
use App\Http\Livewire\CompetitionRecommendation;
use App\Http\Livewire\CourseTutor;
use App\Http\Livewire\DetailCompetitionRecommendation;
use App\Http\Livewire\DetailCourse;
use App\Http\Livewire\DetailCourseBooking;
use App\Http\Livewire\DetailUser;
use App\Http\Livewire\DonationDelivery;
use App\Http\Livewire\KelolaPantiAsuhan;
use App\Http\Livewire\OrphanageOrphan;
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
    return view('list-orphanage');
})->name('donasi');

Route::get('/detail-user/{user_id}', DetailUser::class)->name('detail-user');
Route::get('/kirim-donasi/{user_id}', DonationDelivery::class)->name('kirim-donasi');

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
Route::get('/myfindpaskill/{courseId}', [CourseController::class, 'show']);
Route::get('/padata', [OrphanageController::class, 'index']);
Route::get('/padata/{orphanage}', [OrphanageController::class, 'show']);
Route::get('/competition/{competitionId}', [CompetitionController::class, 'show']);
Route::get('midtrans/{id}', [TransactionController::class, 'showMidtrans'])->name('midtrans');
//buat panti
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dasbor', function () {
        return view('dashboard');
    })->name('dasbor');
    Route::get('/kursus', function () {
        return view('course');
    })->name('kursus');
    Route::get('/kursus/tutor/{skill_id}', CourseTutor::class)->name('tutor');
    Route::get('/kursus/tutor/detail-kursus/{course_id}', DetailCourse::class)->name('detail-kursus');
    Route::get('/course-booking/{course_booking_id}', DetailCourseBooking::class)->name('detail-course-booking');
    Route::get('/kursus/tutor/detail-tutor/{course_id}/detail-reservation', function () {
        return view('detail-reservation');
    })->name('detail-reservation');
    Route::get('/kursus/detail-kursus', function () {
        return view('detail-course-manage');
    })->name('detail-kelola-kursus');
    Route::get('/lomba', CompetitionRecommendation::class)->name('lomba');
    Route::get('/lomba/detail-lomba/{competition_recommendation_id}', DetailCompetitionRecommendation::class)->name('detail-competition-recommendation');
    Route::get('/kelola-panti', KelolaPantiAsuhan::class)->name('kelola-panti');
    Route::get('/tambah-anak-panti', OrphanageOrphan::class)->name('tambah-anak-panti');
});
