<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactusController extends Controller
{
    public function show() {
        return view('admin.contactus');
    }
}
