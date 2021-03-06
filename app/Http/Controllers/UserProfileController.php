<?php

namespace App\Http\Controllers;

use App\Entry;
use App\Http\Traits\SortByTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class UserProfileController extends Controller
{

    use SortByTrait;

    private $request;

    function __construct(Request $request)
    {
        $this->request = $request;
        $this->middleware('auth');
    }

    public function index()
    {
        return view('entries', [
                'entries' => Entry::getEntries($this->request, Auth::user()->id),
                'url' => $this->getSortByUrl('myEntries'),
        ]); 
    }

    public function profile()
    {
        return view('profile', [
                'user'   => Auth::user(),
        ]);
    }

    public function updateProfile(Request $request)
    {
        $this->validator($request->all())->validate();
        Auth::user()->fill($request->all())->save();
        return back();
    }

    protected function validator(array $data)
    {
        $uniqueRule = Rule::unique('users')->ignore(Auth::user());
        return Validator::make($data, [
                'name'  => ['required', 'string', 'max:255'],
                'email' => ['required', 'string', 'email', 'max:255', $uniqueRule],
        ]);
    }

}
