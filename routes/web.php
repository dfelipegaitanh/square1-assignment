<?php

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


Auth::routes();


Route::get('/home/{sort?}', 'EntryController@index')->name('index');
Route::get('entries/{id}/{sort?}', 'EntryController@entriesByUser')->name('userEntries');

Route::get('myEntries', 'EntryController@userEntries')->name('myEntries');
Route::get('profile', 'UserProfileController@profile')->name('profile');
Route::post('profile', 'UserProfileController@updateProfile')->name('update_profile');

Route::resource( 'entry_action' ,EntryActionsController::class)->except([
    'update', 'destroy'
]);;