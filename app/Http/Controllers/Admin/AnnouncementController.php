<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Announcements;
use DB;

class AnnouncementController extends Controller
{
    public function addAnnounce(){
        return view('admin.addannouncement');
    }

    public function addAnnouncePost( Request $req ) {
    	$title = $req->title;
    	$author = $req->author;
    	$article = $req->article;
    	$query = "insert into anc( anc_title, anc_author, anc_art, data ) values( \"$title\", \"$author\", \"$article\", now() )";
    	print_r( $req );
    	echo $query;

    	DB::insert( $query );
    	return redirect( "/admin/addannouncement" );
    }
    
    public function updateAnnounce(){
        return view('admin.updateannouncement');
    }

    public function viewAnnounce(){
        return view('admin.viewannouncement');
        }
}
