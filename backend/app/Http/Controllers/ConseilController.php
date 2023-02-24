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
    $conseil = Conseil::all();
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
        $conseil = new Conseil();
        $conseil->id_plante = $request->id_plante;
        $conseil->id_user = $request->id_user;
        $conseil->titre = $request->titre;
        $conseil->description = $request->description;
        $conseil->image = $request->image;
        $conseil->save();
        return response($conseil, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Conseil  $conseil
     * @return \Illuminate\Http\Response
     */
    public function show(Conseil $conseil)
    {
    $conseil = Conseil::find($conseil);
    if ($conseil) {
        return response($conseil, 200);
    }
        return response(["message" => "aucun conseil trouve"], 200);
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
