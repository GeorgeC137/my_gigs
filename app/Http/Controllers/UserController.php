<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    // Show Register Form
    public function create()
    {
        return view('users.register');
    }

    // Create & Store New User
    public function store(Request $request)
    {
        $formInputs = $request->validate([
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users,email|max:255',
            'password' => 'required|confirmed|min:6',
        ]);

        // Hash Password
        $hashedPassword = Hash::make($formInputs['password']);

        // Create User
        $user = User::create($formInputs);

        // Login
        auth()->login($user);

        // Redirect To Homepage with Success Message
        return redirect('/')->with('success', 'User registered successfully');
    }

    // Log User Out
    public function logout(Request $request)
    {
        auth()->logout();

        // Invalidate The User Session & Regenerate csrf token
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        // Redirect To Homepage With Success Message
        return redirect('/')->with('success', 'Logged out successfully');
    }

    // Show Login Form
    public function login()
    {
        return view('users.login');
    }

    // Authenticate/Login User 
    public function authenticate(Request $request)
    {
        $formInputs = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Attempt To Log in User 
        if(auth()->attempt($formInputs))
        {
            $request->session()->regenerate();

            // Redirect To Homepage With Success Message 
            return redirect('/')->with('success', 'Logged in successfully');
        }

        // Redirect With Error Message If Login Failed 
        return redirect()->back()->withErrors(['email' => 'Invalid Credentials'])->onlyInput('email');
    }
}
