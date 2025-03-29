<?php

use Illuminate\Support\Facades\Route;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\Subject;

Route::get('/students', function () {
    $students = Student::all();
    return response()->json($students);
});

Route::get('/subjects', function () {
    $subjects = Subject::orderBy('year')->get()->groupBy('year');
    return response()->json($subjects);
});
Route::get('/', function () {
    return view('welcome');
});
