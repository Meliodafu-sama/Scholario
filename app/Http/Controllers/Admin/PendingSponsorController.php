<?php

namespace App\Http\Controllers\Admin;

use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PendingSponsorController extends Controller
{
    public function individual() {
        // $res = DB::select("select * from campus");
        // return $res;
        // return view('admin.individual',['res'=>$res]);
        $data = DB::select("select * from campus");
        return view('admin.individual',['data'=>$data]);
    }

    public function company(){
    	return view('admin.company');
    }
}
