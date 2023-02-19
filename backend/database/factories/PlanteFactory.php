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
            'chemin_plante' => $this->faker->name(),
            'caracteristiques' => $this->faker->name(),
            'description' => $this->faker->name(),
            'localisation' => $this->faker->name(),
            'id_type' => $this->faker->numberBetween(1, 10),
            'image' => $this->faker->name(),
            'user_id' => $this->faker->numberBetween(1, 10),
        ];
    }
}
