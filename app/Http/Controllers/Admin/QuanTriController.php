<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Tour;
use Illuminate\Http\Request;

class QuanTriController extends Controller
{
    public function dashboard()
    {
        $parameters = [];
        $parameters['tour'] = Tour::inRandomOrder()->first();
        return view('admin.pages.dashboard', $parameters);
    }
}
