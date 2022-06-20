<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Tour;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function view($id)
    {
        $parameters=[];
        $parameters['tour']=Tour::find($id);
        return view('admin.pages.files.show',$parameters);
    }
}
