<?php

namespace App\Http\Controllers;

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
        $plante = Plante::all();
        if ($plante) {
            return response($plante, 200);
        }
            return response(["message" => "aucune plante trouve"], 200);
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
    'chemin_plante' => 'required',
    'caracteristiques' => 'required',
    'description' => 'required',
    'localisation' => 'required',
    'id_type' => 'required',
    'image' => 'required',
    'user_id' => 'required',
      ]);
      $plante = Plante::create([
        'nom_plante' => $plantevalidation['nom_plante'],
        'chemin_plante' => $plantevalidation['chemin_plante'],
        'caracteristiques' => $plantevalidation['caracteristiques'],
        'description' => $plantevalidation['description'],
        'localisation' => $plantevalidation['localisation'],
        'id_type' => $plantevalidation['id_type'],
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
     $plante = DB::table('plante')
     ->join('users', 'plante.user_id', '=', 'users.id')
     ->select('plante.*', 'users.name' , 'users.prenom' , 'users.email')
      ->where('plante.id', '=', $id)
      ->get();
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
        'chemin_plante' => 'required',
        'caracteristiques' => 'required',
        'description' => 'required',
        'localisation' => 'required',
        'id_type' => 'required',
        'image' => 'required',
        'user_id' => 'required',
          ]);
      $plante = Plante::where('id', $id)->update([
        'nom_plante' => $plantevalidation['nom_plante'],
        'chemin_plante' => $plantevalidation['chemin_plante'],
        'caracteristiques' => $plantevalidation['caracteristiques'],
        'description' => $plantevalidation['description'],
        'localisation' => $plantevalidation['localisation'],
        'id_type' => $plantevalidation['id_type'],
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
