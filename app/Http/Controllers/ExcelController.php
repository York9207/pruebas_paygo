<?php

namespace App\Http\Controllers;

use App\Imports\LogisticsImport;
use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ExcelController extends Controller {

    function index() {        
        return view('upload');
    }

    public function import(Request $request) {
        Excel::import(new LogisticsImport, request()->file('select_file'));
        Excel::import(new UsersImport, request()->file('select_file'));
        return back()->with('success', 'Datos de Excel importados con éxito.');
    }

}
