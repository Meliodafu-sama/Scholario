<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Announcements;

class AnnouncementController extends Controller
{
    public function addAnnounce(){
        return view('admin.addannouncement');
    }
    
    public function updateAnnounce(){
        return view('admin.updateannouncement');
    }

    public function viewAnnounce(){
        return view('admin.viewannouncement');
        }
}
