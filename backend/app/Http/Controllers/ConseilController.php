<?php

namespace App\Http\Controllers;

use App\Models\Conseil;
use Illuminate\Http\Request;

class ConseilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    $conseil = Conseil::with('user','plante')->get()->map(function ($conseil) {
        $conseil->prenom_utilisateur = $conseil->user->only('name')['name'];
        $conseil->name_utilisateur = $conseil->user->only('prenom')['prenom'];
        $conseil->image_utilisateur = $conseil->user->only('photo')['photo'];
        $conseil->image_plante = $conseil->plante->only('image')['image'];
        return $conseil;
    });
    if ($conseil) {
        return response($conseil, 200);
    }
        return response(["message" => "aucun conseil trouve"], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $conseilvalidation = $request->validate([

    'plante_id' => 'required',
    'user_id' => 'required',
    'titreConseil' => 'required',
    'contenuConseil' => 'required',
   
        ]);
        $conseil = Conseil::create([
    'plante_id' => $conseilvalidation['plante_id'],
    'user_id' => $conseilvalidation['user_id'],
    'titreConseil' => $conseilvalidation['titreConseil'],
    'contenuConseil' => $conseilvalidation['contenuConseil'],
        ]);
        return response(["message" => "conseil ajoute"], 201);



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Conseil  $conseil
     * @return \Illuminate\Http\Response
     */
    public function show(Conseil $id)
    {
        $conseil = Conseil::with('user','plante')->find($id); 
         return $conseil ;
      }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Conseil  $conseil
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Conseil $conseil)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Conseil  $conseil
     * @return \Illuminate\Http\Response
     */
    public function destroy(Conseil $conseil)
    {
        //
    }
}
