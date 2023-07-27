<?php

namespace App\Http\Controllers;

use App\Models\Conseil;
use App\Models\Plante;
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
    public function store(Request $request, $id)
    {
        $conseilvalidation = $request->validate([
            'user_id' => 'required',
            'contenuConseil' => 'required',
        ]);
        
        $conseil = Conseil::create([
            'plante_id' => $id,
            'user_id' => $conseilvalidation['user_id'],
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
    // public function show(Plante $id)
    // {
    //         $plante = Plante::with('conseils')->find($id)->first(); 
    //         return $plante ;
    //   }
    public function show($id)
    {
        $conseil = Conseil::with('user')->where('id', $id)->get()->map(function ($conseil) {
            $conseil->prenom_utilisateur = $conseil->user->only('name')['name'];
            $conseil->name_utilisateur = $conseil->user->only('prenom')['prenom'];
            return $conseil;
        });
    
        if ($conseil->isNotEmpty()) {
            return response($conseil->first(), 200);
        }
    
        return response(["message" => "Aucun conseil trouvé"], 200);
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
