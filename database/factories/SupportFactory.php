<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Support>
 */
class SupportFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'start_year' => 1,
            'end_year' => 1,
            'min_condition' => 1,
            'max_condition' => 1,
            'price' => 1,
        ];
    }
}
