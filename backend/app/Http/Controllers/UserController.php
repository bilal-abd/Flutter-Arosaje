<?php

namespace App\Http\Controllers;

use App\Models\User;

use Illuminate\Http\Request;
use PhpParser\Parser\Tokens;
use Doctrine\Common\Lexer\Token;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use GrahamCampbell\ResultType\Success;
use Illuminate\Support\Facades\Validator;


class UserController extends Controller
{
    public function register(Request $request)
    { 
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:60',
            'email' => 'required|email|max:60|unique:users',
            'password' => 'required|max:30',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'error' => $validator->errors()
            ]);
        } else {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();
        return response()->json(['user'=>$user]);
        // Success::create('user created successfully');
     }
    }

//gestion de role et permission pour l'utilisateur 
    public function login(Request $request)
{
    $credentials = $request->only(['email', 'password']);
    $token = [
        'exp' => time() + 6000 * 60 // Expiration time
    ];
 
    
    if (!$token = auth()->attempt($credentials)) {
        return response()->json(['error' => 'email ou password incorrect'], 401);
    }
    $user = auth()->user(); // Récupérer l'utilisateur authentifié
    return response()->json(['user' => $user , 'token' => $token ],200);
}
public function logout(Request $request)
{
    auth()->logout();

    return response()->json(['message' => 'Déconnecté avec succès'], 200);
}
}