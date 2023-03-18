<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use GrahamCampbell\ResultType\Success;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use PhpParser\Parser\Tokens;

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
    $validator = Validator::make($request->all(), [
        'email' => 'required|email|max:50',
        'password' => 'required|max:50',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'error' => $validator->errors(),
        
        ]);
    } else {

    if($user = User::whereEmail($request->email)->first()){
        if(Hash::check($request->password, $user->password)){
            if ($user->role == 1) {
                return response()->json([$user],200);

            } elseif ($user->role == 2) {
                return response()->json([$user],200);
            } 
            elseif ($user->role == 3){
                return response()->json([$user],200);
            }
        } 
        elseif (!Hash::check($request->password, $user->password)) {
            return response()->json(['error'=>'email or password is incorrect'],500);
        }
    } else {
        return response()->json(['error'=>'email is incorrect'],500);
    }
      
    }
}
public function logout(Request $request)
{
 return auth()->user()->tokens->each(function ($token, $key) {
    $token->delete();
});
    return response()->json(['message' => 'Logged out successfully'], 200);
}
}