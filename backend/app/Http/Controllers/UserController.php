<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
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
        return response()->json(['user'=>$request->all()]);
     }
    }

//gestion de role et permission pour l'utilisateur 
    public function login(Request $request)
{
    $validator = Validator::make($request->all(), [
        'email' => 'required|email|max:30',
        'password' => 'required|max:50',
    ]);
    if ($validator->fails()) {
        return response()->json([
            'error' => $validator->errors()
        ]);
    } else {
        $user = User::whereEmail($request->email)->first();
        if (Hash::check($request->password, $user->password)) {

            if ($user->role == 1) {
             return response()->json([
                'token' => $user->createToken(time())->plainTextToken,
                'role' => 'botaniste'
        ]); 
            } elseif ($user->role == 2) {
                return response()->json([
                    'token' => $user->createToken(time())->plainTextToken,
                    'role' => 'Gardien'
                ]); 
            } 
            elseif ($user->role == 3){
                return response()->json([
                    'token' => $user->createToken(time())->plainTextToken,
                    'role' => 'user'
                ]); 
            }
        } 
        else {
            return response()->json(['error'=>'email or password is incorrect'],401);
        }
    }
}
}
