<?php

use App\Http\Controllers\JobController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Models\Job;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// All Jobs
Route::get('/', [JobController::class, 'index']);


// Show create job form
Route::get('/jobs/create', [JobController::class, 'create'])->middleware('auth');


// Store jobs in database
Route::post('/jobs', [JobController::class, 'store'])->middleware('auth');


// Manage Jobs 
Route::get('/jobs/manage', [JobController::class, 'manage'])->middleware('auth');


// Show Job Edit Form
Route::get('/jobs/{job}/edit', [JobController::class, 'edit'])->middleware('auth');


// Delete Job
Route::delete('/jobs/{job}', [JobController::class, 'destroy'])->middleware('auth');


// Update Job Submit Form
Route::put('/jobs/{job}', [JobController::class, 'update'])->middleware('auth');


// Single Job
Route::get('/jobs/{job}', [JobController::class, 'show']);


// Show Register Form
Route::get('/register', [UserController::class, 'create'])->middleware('guest');


// Create New User
Route::post('/users', [UserController::class, 'store']);


// Log User Out
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');


// Show Login Form
Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');


// Login/authenticate User 
Route::post('/users/authenticate', [UserController::class, 'authenticate']);


