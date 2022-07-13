<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Tour;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function dashboard()
    {
        return redirect()->route('admin.agencies.index');
    }
}
