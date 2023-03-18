<?php

namespace App\Http\Controllers;

use App\Models\Conseil;
use App\Models\Plante;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PlanteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $plantes = Plante::with('user')->get()->map(function ($plante) {
            $plante->prenom_utilisateur = $plante->user->only('name')['name'];
            $plante->name_utilisateur = $plante->user->only('prenom')['prenom'];
            $plante->image_utilisateur = $plante->user->only('photo')['photo'];
            return $plante;
        });
    
        if ($plantes->isEmpty()) {
            return response(["message" => "aucune plante trouvée"], 200);
        }
    
        return response($plantes, 200);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $plantevalidation = $request->validate([
    'nom_plante' => 'required',
    'description' => 'required',
    'localisation' => 'required',
    'image' => 'required|max:500',
    'user_id' => 'required',
      ]);
      $plante = Plante::create([
        'nom_plante' => $plantevalidation['nom_plante'],
        'description' => $plantevalidation['description'],
        'localisation' => $plantevalidation['localisation'],
        'image' => $plantevalidation['image'],
        'user_id' => $plantevalidation['user_id'],
      ]);
        return response(["message" => "plante ajoutee"], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Plante  $plante
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    $plante = Plante::with('user','conseils')->find($id);
      return $plante ;
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Plante  $plante
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,  $id)
    {
      $plantevalidation = $request->validate([
        'nom_plante' => 'required',
        'description' => 'required',
        'localisation' => 'required',
        'image' => 'required',
        'user_id' => 'required',
          ]);
      $plante = Plante::where('id', $id)->update([
        'nom_plante' => $plantevalidation['nom_plante'],
        'description' => $plantevalidation['description'],
        'localisation' => $plantevalidation['localisation'],
        'image' => $plantevalidation['image'],
        'user_id' => $plantevalidation['user_id'],
      ]);
        return response(["message" => "plante modifiee"], 201);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Plante  $plante
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {
        $plante = Plante::where('id', $id)->delete();
        return response(["message" => "plante supprimee"], 201);
    
    }
}
