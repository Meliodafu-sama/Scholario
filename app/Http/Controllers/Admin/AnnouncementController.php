<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Announcements;
use DB;
use Log;

class AnnouncementController extends Controller
{
    public function addAnnounce(){
        return view('admin.addannouncement');
    } 

    public function addAnnouncePost( Request $req ) {
    	Log::debug( "Now posting ..." );
    	$title = $req->title;
    	$author = "1";
    	$article = $req->article;
        $query = "insert into anc( anc_title, anc_author, anc_art, date ) values( \"". $title ."\", \"". $author ."\", \"". $article ."\", now() )";

        DB::insert( $query );
    	echo $query;
    	return redirect( "/admin/addannouncement" );
    }
    
    public function updateAnnounce(){
        return view('admin.updateannouncement');
    }

    public function viewAnnounce(){
        return view('admin.viewannouncement');
        }
}
