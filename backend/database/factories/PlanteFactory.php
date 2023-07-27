<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Plante>
 */
class PlanteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nom_plante' => $this->faker->name(),
            'description' => $this->faker->text(),
            'localisation' => $this->faker->name(),
            'image' => $this->faker->imageUrl(),
            'user_id' => $this->faker->numberBetween(1, 10),
        ];
    }
}
