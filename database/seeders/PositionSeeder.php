<?php

namespace Database\Seeders;

use App\Models\Position;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class PositionSeeder extends Seeder
{

    public function run()
    {
        $array = config('constants.positionNames');
        $array = array_map('ucfirst', $array);
        $array = array_unique($array);
        $array = array_values($array);
        $array = array_map(function($item) { return [ 'name' => $item, 'created_at' => Carbon::now() ]; }, $array);

        Position::insert($array);
    }
}
