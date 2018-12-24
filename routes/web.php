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

/*Checking of DB Connection
try {
        DB::connection()->getPdo();
        if(DB::connection()->getDatabaseName()){
            echo "Yes! Successfully connected to the DB: " . DB::connection()->getDatabaseName();
        }else{
            die("Could not find the database. Please check your configuration.");
        }
    } catch (\Exception $e) {
        die("Could not open connection to database server.  Please check your configuration.");
    }*/

Route::get('/', function () {
    return redirect( "/admin/dashboard" );
});

//DASHBOARDS
Route::get('/admin/dashboard','Admin\DashboardController@show');
//Add Announcement - Route
Route::get('/admin/addannouncement','Admin\AnnouncementController@addAnnounce');

Route::post( "/admin/addannouncement", "Admin\AnnouncementController@addAnnouncePost" );
//Update Announcement - Route
Route::get('/admin/updateannouncement','Admin\AnnouncementController@updateAnnounce');
//View Announcement - Route
Route::get('/admin/viewannouncement','Admin\AnnouncementController@viewAnnounce');
//View Banner - Route
Route::get('/admin/banner','Admin\BannerController@show');
//Pending Sponsor - Route
Route::get('/admin/individual','Admin\PendingSponsorController@individual');
//Individual Sponsor - Route
Route::get('/admin/company','Admin\PendingSponsorController@company');
//About Us - Route
Route::get('/admin/aboutus','Admin\AboutusController@aboutus');
//Contact Us - Route
Route::get('/admin/contactus','Admin\ContactusController@show');